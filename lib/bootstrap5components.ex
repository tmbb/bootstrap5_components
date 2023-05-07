defmodule Bootstrap5Components do
  defp vertical_input() do
    quote do
      def input(%{field: %Phoenix.HTML.FormField{} = field} = assigns) do
        assigns
        |> assign(field: nil, id: assigns.id || field.id)
        |> assign(:errors, Enum.map(field.errors, &translate_error(&1)))
        |> assign_new(:name, fn ->
          if assigns.multiple, do: field.name <> "[]", else: field.name
        end)
        |> assign_new(:value, fn -> field.value end)
        |> input()
      end

      def input(%{type: "checkbox", value: value} = assigns) do
        assigns =
          assign_new(assigns, :checked, fn ->
            Phoenix.HTML.Form.normalize_value("checkbox", value)
          end)

        ~H"""
        <div class="mb-3" phx-feedback-for={@name}>
          <label class="control-label">
            <input type="hidden" name={@name} value="false" />
            <input
              type="checkbox"
              id={@id || @name}
              name={@name}
              value="true"
              checked={@checked}
              class="form-control"
              {@rest}
            /> <%= @label %>
          </label>

          <.error :for={msg <- @errors}><%= msg %></.error>
        </div>
        """
      end

      def input(%{type: "select"} = assigns) do
        ~H"""
        <div class="mb-3" phx-feedback-for={@name}>
          <.label for={@id}><%= @label %></.label>

          <select
            id={@id}
            name={@name}
            class="form-control"
            multiple={@multiple}
            {@rest}
          >
            <option :if={@prompt} value=""><%= @prompt %></option>
            <%= Phoenix.HTML.Form.options_for_select(@options, @value) %>
          </select>

          <.error :for={msg <- @errors}><%= msg %></.error>
        </div>
        """
      end

      def input(%{type: "textarea"} = assigns) do
        ~H"""
        <div class="mb-3" phx-feedback-for={@name}>
          <.label for={@id}><%= @label %></.label>
          <textarea
            id={@id || @name}
            name={@name}
            class={[
              "form-control",
              (if @errors == [] do "is-valid" else "is-invalid" end)
            ]}
            {@rest}
          ><%= Phoenix.HTML.Form.normalize_value("textarea", @value) %></textarea>
          <.error :for={msg <- @errors}><%= msg %></.error>
        </div>
        """
      end

      def input(assigns) do
        ~H"""
        <div class="mb-3" phx-feedback-for={@name}>
          <.label for={@id}><%= @label %></.label>

          <input
            type={@type}
            name={@name}
            id={@id || @name}
            value={Phoenix.HTML.Form.normalize_value(@type, @value)}
            class={[
              "form-control",
              (if @errors == [] do "is-valid" else "is-invalid" end)
            ]}
            {@rest}
          />
          <.error :for={msg <- @errors}><%= msg %></.error>
        </div>
        """
      end
    end
  end

  defmacro __code_gen__(options) do
    gettext_module = Keyword.fetch!(options, :gettext_module)
    static_assets_path = Keyword.get(options, :static_assets_path, "/_bs5components")

    # =================================================================
    # WARNING
    # =================================================================
    # We build a quoted expression manually to make sure everything
    # static is static and everything dynamic is dynamic
    css_assets_html =
      {:sigil_H, [delimiter: ~S(""")], [
        {:<<>>, [], [
          ~s[<link phx-track-static href={"#{static_assets_path}/css/\#{@theme}.css"} rel="stylesheet" />\n]
        ]},
        []
      ]}

    # Now, we need to insert a literal inside a quote which will live inside a quote
    plug_ast =
      quote do
        plug(Plug.Static,
          at: unquote(static_assets_path),
          from: {:bootstrap5components, "priv/assets"},
          gzip: false,
          headers: [{"access-control-allow-origin", "*"}]
        )
      end

    plug_return_ast =
      {:quote, [context: __MODULE__], [[do: plug_ast]]}

    quote do
      alias Phoenix.LiveView.JS
      use Phoenix.Component
      import unquote(gettext_module)

      CodeGen.block "bs5:assets" do
        defmacro __using__(:assets) do
          unquote(plug_return_ast)
        end

        def css_assets(%{theme: _theme} = assigns) do
          unquote(css_assets_html)
        end
      end

      CodeGen.block "bs5:modal" do
        @doc """
        Renders a modal.

        ## Examples

            <.modal id="confirm-modal">
              Are you sure?
              <:confirm>OK</:confirm>
              <:cancel>Cancel</:cancel>
            </.modal>

        JS commands may be passed to the `:on_cancel` and `on_confirm` attributes
        for the caller to react to each button press, for example:

            <.modal id="confirm" on_confirm={JS.push("delete")} on_cancel={JS.navigate(~p"/posts")}>
              Are you sure you?
              <:confirm>OK</:confirm>
              <:cancel>Cancel</:cancel>
            </.modal>
        """
        attr(:id, :string, required: true)
        attr(:show, :boolean, default: false)
        attr(:on_cancel, JS, default: %JS{})
        attr(:on_confirm, JS, default: %JS{})
        attr(:on_click_away, JS, default: %JS{})

        slot(:inner_block, required: true)
        slot(:title)
        slot(:subtitle)
        slot(:confirm)
        slot(:cancel)

        def modal(assigns) do
          ~H"""
          <div
            id={@id}
            phx-mounted={@show && show_modal(@id)}
            phx-remove={hide_modal(@id)}
            class="live-modal modal"
          >
            <.focus_wrap
                id={"#{@id}-container"}
                phx-mounted={@show && show_modal(@id)}
                phx-click-away={@on_click_away}
                phx-window-keydown={hide_modal(@on_cancel, @id)}
                phx-key="escape"
                class="modal-dialog modal-xl"
                aria-labelledby={"#{@id}-title"}
                aria-describedby={"#{@id}-description"}
                role="dialog"
                aria-modal="true"
                tabindex="0"
            >
              <div class="modal-content">
                <div class="modal-header">
                  <button
                    phx-click={hide_modal(@on_cancel, @id)}
                    type="button"
                    class="btn-close"
                    aria-label={gettext("close")}>
                  </button>
                </div>
                <div class="modal-body">
                  <%= render_slot(@inner_block) %>
                </div>
                <div :if={@cancel != []} class="modal-footer">
                  <.link
                      :for={cancel <- @cancel}
                      phx-click={hide_modal(@on_cancel, @id)}
                      class=""
                      >
                    <%= render_slot(cancel) %>
                  </.link>
                </div>
              </div>
            </.focus_wrap>
          </div>
          """
        end
      end

      CodeGen.block "bs5:flash" do
        @doc """
        Renders flash notices.

        ## Examples

            <.flash kind={:info} flash={@flash} />
            <.flash kind={:info} phx-mounted={show("#flash")}>Welcome Back!</.flash>
        """
        attr(:id, :string, default: "flash", doc: "the optional id of flash container")
        attr(:flash, :map, default: %{}, doc: "the map of flash messages to display")
        attr(:title, :string, default: nil)
        attr(:kind, :atom, values: [:info, :error], doc: "used for styling and flash lookup")
        attr(:autoshow, :boolean, default: true, doc: "whether to auto show the flash on mount")
        attr(:close, :boolean, default: true, doc: "whether the flash can be closed")
        attr(:rest, :global, doc: "the arbitrary HTML attributes to add to the flash container")

        slot(:inner_block, doc: "the optional inner block that renders the flash message")

        def flash(assigns) do
          ~H"""
          <div class="position-absolute top-0 end-0 mt-4 ml-4">
            <div
              :if={msg = render_slot(@inner_block) || Phoenix.Flash.get(@flash, @kind)}
              id={@id}
              phx-mounted={@autoshow && show("##{@id}")}
              phx-click={JS.push("lv:clear-flash", value: %{key: @kind}) |> hide("##{@id}")}
              role="alert"
              class={[
                "card",
                "position-relative",
                @kind == :info && "alert alert-success",
                @kind == :error && "alert alert-danger"
              ]}
              {@rest}
            >
              <h5 :if={@title} class="card-title">
                <.icon :if={@kind == :info} name="info-circle" />
                <.icon :if={@kind == :error} name="info-circle" /> <%= @title %>
              </h5>

              <div>
                <%= msg %>
              </div>

              <button
                :if={@close}
                type="button"
                class="btn-close position-absolute top-0 end-0 my-2 mx-2"
                aria-label={gettext("close")}
              >
              </button>
            </div>
          </div>
          """
        end
      end

      CodeGen.block "bs5:flash_group" do
        @doc """
        Shows the flash group with standard titles and content.

        ## Examples

            <.flash_group flash={@flash} />
        """
        attr(:flash, :map, required: true, doc: "the map of flash messages")

        def flash_group(assigns) do
          ~H"""
          <.flash kind={:info} title="Success!" flash={@flash} />
          <.flash kind={:error} title="Error!" flash={@flash} />
          <.flash
            id="disconnected"
            kind={:error}
            title="We can't find the internet"
            close={false}
            autoshow={false}
            phx-disconnected={show("#disconnected")}
            phx-connected={hide("#disconnected")}
          >
            Attempting to reconnect <.icon name="arrow-repeat" />
          </.flash>
          """
        end
      end

      CodeGen.block "bs5:simple_form" do
        @doc """
        Renders a simple form.

        ## Examples

            <.simple_form for={@form} phx-change="validate" phx-submit="save">
              <.input field={@form[:email]} label="Email"/>
              <.input field={@form[:username]} label="Username" />
              <:actions>
                <.button>Save</.button>
              </:actions>
            </.simple_form>
        """
        attr(:for, :any, required: true, doc: "the datastructure for the form")
        attr(:as, :any, default: nil, doc: "the server side parameter to collect all input under")

        attr(:rest, :global,
          include: ~w(autocomplete name rel action enctype method novalidate target),
          doc: "the arbitrary HTML attributes to apply to the form tag"
        )

        slot(:inner_block, required: true)
        slot(:actions, doc: "the slot for form actions, such as a submit button")

        def simple_form(assigns) do
          ~H"""
          <.form :let={f} for={@for} as={@as} {@rest}>
            <%= render_slot(@inner_block, f) %>
            <div :for={action <- @actions} class="btn btn-primary">
              <%= render_slot(action, f) %>
            </div>
          </.form>
          """
        end
      end

      CodeGen.block "bs5:input" do
        @doc """
        Renders an input with label and error messages.

        A `%Phoenix.HTML.Form{}` and field name may be passed to the input
        to build input names and error messages, or all the attributes and
        errors may be passed explicitly.

        ## Examples

            <.input field={@form[:email]} type="email" />
            <.input name="my-input" errors={["oh no!"]} />
        """
        attr(:id, :any, default: nil)
        attr(:name, :any)
        attr(:label, :string, default: nil)
        attr(:value, :any)

        attr(:type, :string,
          default: "text",
          values: ~w(checkbox color date datetime-local email file hidden month number password
                    range radio search select tel text textarea time url week)
        )

        attr(:field, Phoenix.HTML.FormField,
          doc: "a form field struct retrieved from the form, for example: @form[:email]"
        )

        attr(:errors, :list, default: [])
        attr(:checked, :boolean, doc: "the checked flag for checkbox inputs")
        attr(:prompt, :string, default: nil, doc: "the prompt for select inputs")

        attr(:options, :list, doc: "the options to pass to Phoenix.HTML.Form.options_for_select/2")

        attr(:multiple, :boolean, default: false, doc: "the multiple flag for select inputs")

        attr(:rest, :global,
          include: ~w(autocomplete cols disabled form max maxlength min minlength
                                        pattern placeholder readonly required rows size step)
        )

        slot(:inner_block)

        unquote(vertical_input())
      end

      CodeGen.block "bs5:button" do
        @doc """
        Renders a button.

        ## Examples

            <.button>Send!</.button>
            <.button phx-click="go" class="ml-2">Send!</.button>
        """
        attr(:type, :string, default: nil)
        attr(:class, :string, default: nil)
        attr(:rest, :global, include: ~w(disabled form name value))

        slot(:inner_block, required: true)

        def button(assigns) do
          ~H"""
          <button
            type={@type}
            class={[
              "btn",
              (if @class == nil do "btn-primary" else @class end)
            ]}
            {@rest}
          >
            <%= render_slot(@inner_block) %>
          </button>
          """
        end
      end

      CodeGen.block "bs5:list" do
        @doc """
        Renders a data list.

        ## Examples

            <.list>
              <:item title="Title"><%= @post.title %></:item>
              <:item title="Views"><%= @post.views %></:item>
            </.list>
        """
        slot :item, required: true do
          attr(:title, :string, required: true)
        end

        def list(assigns) do
          ~H"""
          <div class="">
            <dl class="">
              <div :for={item <- @item} class="">
                <dt class=""><%= item.title %></dt>
                <dd class=""><%= render_slot(item) %></dd>
              </div>
            </dl>
          </div>
          """
        end
      end

      CodeGen.block "bs5:icon" do
        @doc """
        Renders a [Hero Icon](https://heroicons.com).

        ## Examples

            TODO
        """
        attr(:name, :string, required: true)
        attr(:size, :any, default: "1em")

        def icon(%{} = assigns) do
          Bootstrap5Components.Icons.icon(assigns)
        end
      end

      CodeGen.block "bs5:label" do
        @doc """
        Renders a label.
        """
        attr(:for, :string, default: nil)
        slot(:inner_block, required: true)

        def label(assigns) do
          ~H"""
          <label for={@for} class="form-label">
            <%= render_slot(@inner_block) %>
          </label>
          """
        end
      end

      CodeGen.block "bs5:back" do
        @doc """
        Renders a back navigation link.

        ## Examples

            <.back navigate={~p"/posts"}>Back to posts</.back>
        """
        attr(:navigate, :any, required: true)
        slot(:inner_block, required: true)

        def back(assigns) do
          ~H"""
          <div class="mt-16">
            <.link navigate={@navigate}>
              <.icon name="arrow-left"/> <%= render_slot(@inner_block) %>
            </.link>
          </div>
          """
        end
      end

      CodeGen.block "bs5:error" do
        @doc """
        Generates a generic error message.
        """
        slot(:inner_block, required: true)

        def error(assigns) do
          ~H"""
          <p class="invalid-feedback mt-3">
            <.icon name="exclamation-circle"/> <%= render_slot(@inner_block) %>
          </p>
          """
        end
      end

      CodeGen.block "bs5:header" do
        @doc """
        Renders a header with title.
        """
        attr(:class, :string, default: nil)

        slot(:inner_block, required: true)
        slot(:subtitle)
        slot(:actions)

        def header(assigns) do
          ~H"""
          <header class={[@actions != [] && "flex items-center justify-between gap-6", @class]}>
            <div>
              <h1 class="text-lg font-semibold leading-8 text-zinc-800">
                <%= render_slot(@inner_block) %>
              </h1>

              <p :if={@subtitle != []} class="mt-2 text-sm leading-6 text-zinc-600">
                <%= render_slot(@subtitle) %>
              </p>
            </div>

            <div class="flex-none"><%= render_slot(@actions) %></div>
          </header>
          """
        end
      end

      CodeGen.block "bs5:table" do
        @doc ~S"""
        Renders a table with generic styling.

        ## Examples

            <.table id="users" rows={@users}>
              <:col :let={user} label="id"><%= user.id %></:col>
              <:col :let={user} label="username"><%= user.username %></:col>
            </.table>
        """
        attr(:id, :string, required: true)
        attr(:rows, :list, required: true)
        attr(:row_id, :any, default: nil, doc: "the function for generating the row id")

        attr(:row_click, :any,
          default: nil,
          doc: "the function for handling phx-click on each row"
        )

        attr(:row_item, :any,
          default: &Function.identity/1,
          doc: "the function for mapping each row before calling the :col and :action slots"
        )

        slot :col, required: true do
          attr(:label, :string)
        end

        slot(:action, doc: "the slot for showing user actions in the last table column")

        def table(assigns) do
          assigns =
            with %{rows: %Phoenix.LiveView.LiveStream{}} <- assigns do
              assign(assigns, row_id: assigns.row_id || fn {id, _item} -> id end)
            end

          ~H"""
          <div class="">
            <table class="table">
              <thead class="">
                <tr>
                  <th :for={col <- @col} class=""><%= col[:label] %></th>
                  <th class=""><span class="sr-only"><%= gettext("Actions") %></span></th>
                </tr>
              </thead>

              <tbody
                id={@id}
                phx-update={match?(%Phoenix.LiveView.LiveStream{}, @rows) && "stream"}
                class=""
              >
                <tr :for={row <- @rows} id={@row_id && @row_id.(row)} class="">
                  <td
                    :for={{col, i} <- Enum.with_index(@col)}
                    phx-click={@row_click && @row_click.(row)}
                    class={[""]}
                  >
                    <div class="">
                      <span class="" />
                      <span class={["relative", i == 0 && ""]}>
                        <%= render_slot(col, @row_item.(row)) %>
                      </span>
                    </div>
                  </td>

                  <td :if={@action != []} class="">
                    <span :for={action <- @action} class="">
                      <%= render_slot(action, @row_item.(row)) %>
                    </span>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
          """
        end
      end

      CodeGen.block "bs5:js" do
        def show(js \\ %JS{}, selector) do
          JS.show(js, to: selector)
        end

        def hide(js \\ %JS{}, selector) do
          JS.hide(js, to: selector, time: 200)
        end

        def show_modal(js \\ %JS{}, id) when is_binary(id) do
          js
          |> JS.show(to: "##{id}")
          |> JS.show(to: "##{id}-bg")
          |> show("##{id}-container")
          |> JS.add_class("overflow-hidden", to: "body")
          |> JS.focus_first(to: "##{id}-content")
        end

        def hide_modal(js \\ %JS{}, id) do
          js
          |> JS.hide(to: "##{id}-bg")
          |> hide("##{id}-container")
          |> JS.hide(to: "##{id}")
          |> JS.remove_class("overflow-hidden", to: "body")
          |> JS.pop_focus()
        end
      end

      CodeGen.block "bs5:translate" do
        @doc """
        Translates an error message using gettext.
        """
        def translate_error({msg, opts}) do
          @comment__ """
          When using gettext, we typically pass the strings we want
          to translate as a static argument:

              # Translate "is invalid" in the "errors" domain
              dgettext("errors", "is invalid")

              # Translate the number of files with plural rules
              dngettext("errors", "1 file", "%{count} files", count)

          Because the error messages we show in our forms and APIs
          are defined inside Ecto, we need to translate them dynamically.
          This requires us to call the Gettext module passing our gettext
          backend as first argument.

          Note we use the "errors" domain, which means translations
          should be written to the errors.po file. The :count option is
          set by Ecto and indicates we should also apply plural rules.
          """
          if count = opts[:count] do
            Gettext.dngettext(unquote(gettext_module), "errors", msg, msg, count, opts)
          else
            Gettext.dgettext(unquote(gettext_module), "errors", msg, opts)
          end
        end

        @doc """
        Translates the errors for a field from a keyword
        list of errors.
        """
        def translate_errors(errors, field) when is_list(errors) do
          for {^field, {msg, opts}} <- errors, do: translate_error({msg, opts})
        end
      end

      defoverridable modal: 1,
                     flash: 1,
                     flash_group: 1,
                     simple_form: 1,
                     input: 1,
                     button: 1,
                     list: 1,
                     icon: 1,
                     label: 1,
                     back: 1,
                     error: 1,
                     header: 1,
                     table: 1,
                     show: 1,
                     hide: 1,
                     show_modal: 1,
                     hide_modal: 1,
                     translate_error: 1,
                     translate_errors: 2,
                     css_assets: 1,
                     __using__: 1
    end
  end
end
