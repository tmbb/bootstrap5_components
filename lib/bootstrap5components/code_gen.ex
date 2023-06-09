defmodule Bootstrap5Components.CodeGen do
  @moduledoc false

  defmacro __code_gen__(options) do
    gettext_module = Keyword.fetch!(options, :gettext_module)
    user_supplied_icons_module = Keyword.fetch(options, :icons_module)
    static_assets_path = Keyword.get(options, :static_assets_path, "/_bs5components")
    sidebar_class = Keyword.get(options, :sidebar_width, "col-sm-2")
    main_content_class = Keyword.get(options, :main_content_width, "col-sm-10")
    documentation_only? = Keyword.get(options, :documentation_only?, false)

    maybe_raise_not_implemented =
      if documentation_only? do
        quote do
          [raise(CodeGen.DocumentationOnlyError, unquote(__CALLER__.module))]
        end
      else
        []
      end

    {_use_inline_icons?, icons_module} =
      case user_supplied_icons_module do
        {:ok, icons_module} ->
          {false, icons_module}

        :error ->
          {false, quote(do: Bootstrap5Components.InlineIcons)}
      end

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
          unquote_splicing(maybe_raise_not_implemented)
          unquote(css_assets_html)
        end
      end

      CodeGen.block "bs5:modal" do
        @doc """
        Renders a modal.

        ## Examples

        ```heex
        <.modal id="confirm-modal">
          Are you sure?
          <:confirm>OK</:confirm>
          <:cancel>Cancel</:cancel>
        </.modal>
        ```

        JS commands may be passed to the `:on_cancel` and `on_confirm` attributes
        for the caller to react to each button press, for example:

        ```heex
        <.modal id="confirm" on_confirm={JS.push("delete")} on_cancel={JS.navigate(~p"/posts")}>
          Are you sure you?
          <:confirm>OK</:confirm>
          <:cancel>Cancel</:cancel>
        </.modal>
        ```
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
          unquote_splicing(maybe_raise_not_implemented)
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
              <div class="modal-content position-relative">
                <div class="modal-body">
                  <button
                    phx-click={hide_modal(@on_cancel, @id)}
                    type="button"
                    class="btn-close position-absolute top-0 end-0 my-2 mx-2"
                    aria-label={gettext("close")}>
                  </button>
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

      CodeGen.block "bs5:layout" do
        @doc """
        Area for the main content below the nabvar, supporting
        slots for the content itself and for an optional sidebar.
        """

        slot(:sidebar, required: false)
        slot(:content, required: true)

        attr(:sidebar_class, :string, default: unquote(sidebar_class))
        attr(:sidebar_body_class, :string, default: "")
        attr(:content_class, :string, default: unquote(main_content_class))

        def main(assigns) do
          unquote_splicing(maybe_raise_not_implemented)
          ~H"""
          <main>
            <div class="container-fluid row">
              <div class={@sidebar_class}>
                <div class="card mt-3">
                  <div class={["card-body", @sidebar_body_class]}>
                    <%= render_slot(@sidebar) %>
                  </div>
                </div>
              </div>
              <div class={@content_class}>
                <%= render_slot(@content) %>
              </div>
            </div>
          </main>
          """
        end

        # @doc """
        # Area for the content below the sidebar
        # """

        # attr(:width, :integer, default: unquote(main_content_width))
        # slot(:inner_block, required: false)

        # def main_content(assigns) do
        #   unquote_splicing(maybe_raise_not_implemented)
        #   ~H"""
        #   <div class={"col-md-#{@width}"}>
        #     <%= render_slot(@inner_block) %>
        #   </div>
        #   """
        # end

        # attr(:width, :integer, default: unquote(sidebar_width))
        # slot(:inner_block, required: false)

        # def sidebar(assigns) do
        #   unquote_splicing(maybe_raise_not_implemented)
        #   ~H"""
        #   <div class={"col-md-#{@width}"}>
        #     <div class="card mt-3">
        #       <div class="card-body">
        #         <%= render_slot(@inner_block) %>
        #       </div>
        #     </div>
        #   </div>
        #   """
        # end

        @doc """
        A group of links in your sidebar, which will be rendered as a block
        """

        slot(:inner_block, required: false)

        def sidebar_link_group(assigns) do
          unquote_splicing(maybe_raise_not_implemented)
          ~H"""
          <div class="btn-group-vertical w-100 ">
            <%= render_slot(@inner_block) %>
          </div>
          """
        end

        @doc """
        Sidebar link.
        """

        attr(:to, :string, required: true, doc: "destination for your link")
        slot(:inner_block, required: false)

        def sidebar_link(assigns) do
          unquote_splicing(maybe_raise_not_implemented)
          ~H"""
          <a class="btn btn-primary w-100 text-start" href={@to}>
            <%= render_slot(@inner_block) %>
          </a>
          """
        end
      end

      CodeGen.block "bs5:navbar" do
        @doc """
        Navbar component.
        """

        slot(:brand, required: false, doc: "Branding element (e.g. the application name or a logo) for your navbar")
        slot(:start_group, required: false, doc: "content at the start (i.e. left for LTR writing systems) of the navbar")
        slot(:center_group, required: false, doc: "content at the center of the navbar")
        slot(:end_group, required: false, doc: "content at the end (i.e. right for LTR writing systems) of the navbar")

        attr(:class, :string, default: "navbar-dark bg-primary")

        def navbar(assigns) do
          unquote_splicing(maybe_raise_not_implemented)
          ~H"""
          <header class={["navbar navbar-expand-lg", @class]}>
            <div class="container-fluid">
              <%= if @brand != [] do %>
                <span class="navbar-brand">
                  <%= render_slot(@brand) %>
                </span>
              <% end %>
              <%= if @start_group != [] do %>
                <div class="collapse navbar-collapse">
                  <div class="navbar-nav">
                    <%= render_slot(@start_group) %>
                  </div>
                </div>
              <% end %>
              <%= if @center_group != [] do %>
                <div class="collapse navbar-collapse justify-content-center">
                  <div class="navbar-nav">
                    <%= render_slot(@center_group) %>
                  </div>
                </div>
              <% end %>
              <%= if @end_group != [] do %>
                <div class="collapse navbar-collapse justify-content-end">
                  <div class="navbar-nav">
                    <%= render_slot(@end_group) %>
                  </div>
                </div>
              <% end %>
            </div>
          </header>
          """
        end

        @doc """
        Component for a navbar link.
        """

        attr(:active, :boolean, default: false)
        attr(:disabled, :boolean, default: false)
        attr(:class, :string, default: "", doc: "extra classes added to the navbar link")
        attr(:to, :string, doc: "the destination for your navbar link")
        attr(:method, :string, default: "get")

        slot(:inner_block, required: true)

        def navbar_link(assigns) do
          unquote_splicing(maybe_raise_not_implemented)
          ~H"""
          <.link class={[
                "nav-link",
                if @active do "active" else "" end,
                if @disabled do "disabled" else "" end,
                @class
              ]} href={@to} method={@method}>
            <%= render_slot(@inner_block) %>
          </.link>
          """
        end
      end

      CodeGen.block "bs5:flash" do
        @doc """
        Renders flash notices.

        ## Examples

        ```heex
        <.flash kind={:info} flash={@flash} />
        <.flash kind={:info} phx-mounted={show("#flash")}>Welcome Back!</.flash>
        ```
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
          unquote_splicing(maybe_raise_not_implemented)
          ~H"""
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
          """
        end
      end

      CodeGen.block "bs5:flash_group" do
        @doc """
        Shows the flash group with standard titles and content.

        ## Examples

        ```heex
        <.flash_group flash={@flash} />
        ```
        """
        attr(:flash, :map, required: true, doc: "the map of flash messages")

        def flash_group(assigns) do
          unquote_splicing(maybe_raise_not_implemented)
          ~H"""
          <div class="position-absolute top-0 end-0 mt-4 ml-4">
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
              hidden
            >
              Attempting to reconnect <.icon name="arrow-repeat" />
            </.flash>
          </div>
          """
        end
      end

      CodeGen.block "bs5:simple_form" do
        @doc """
        Renders a simple form.

        ## Examples

        ```heex
        <.simple_form for={@form} phx-change="validate" phx-submit="save">
          <.input field={@form[:email]} label="Email"/>
          <.input field={@form[:username]} label="Username" />
          <:actions>
            <.button>Save</.button>
          </:actions>
        </.simple_form>
        ```
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
          unquote_splicing(maybe_raise_not_implemented)
          ~H"""
          <.form :let={f} for={@for} as={@as} {@rest}>
            <%= render_slot(@inner_block, f) %>
            <span :for={action <- @actions}>
              <%= render_slot(action, f) %>
            </span>
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

        ```heex
        <.input field={@form[:email]} type="email" />
        <.input name="my-input" errors={["oh no!"]} />
        ```
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

        unquote(vertical_input(maybe_raise_not_implemented))
      end

      CodeGen.block "bs5:button" do
        @doc """
        Renders a button.

        ## Examples

        ```heex
        <.button>Send!</.button>
        <.button phx-click="go" class="ml-2">Send!</.button>
        ```
        """
        attr(:type, :string, default: nil)
        attr(:class, :string, default: nil)
        attr(:rest, :global, include: ~w(disabled form name value))

        slot(:inner_block, required: true)

        def button(assigns) do
          unquote_splicing(maybe_raise_not_implemented)
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

        ```heex
        <.list>
          <:item title="Title"><%= @post.title %></:item>
          <:item title="Views"><%= @post.views %></:item>
        </.list>
        ```
        """
        slot :item, required: true do
          attr(:title, :string, required: true)
        end

        def list(assigns) do
          unquote_splicing(maybe_raise_not_implemented)
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
        Renders a [Bootstrap Icon](https://icons.getbootstrap.com/).

        ## Examples

            TODO
        """
        attr(:name, :string, required: true)
        attr(:size, :any, default: "1em")

        def icon(%{} = assigns) do
          unquote_splicing(maybe_raise_not_implemented)
          unquote(icons_module).icon(assigns)
        end
      end

      CodeGen.block "bs5:label" do
        @doc """
        Renders a label.
        """
        attr(:for, :string, default: nil)
        slot(:inner_block, required: true)

        def label(assigns) do
          unquote_splicing(maybe_raise_not_implemented)
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

        ```heex
        <.back navigate={~p"/posts"}>Back to posts</.back>
        ```
        """
        attr(:navigate, :any, required: true)
        slot(:inner_block, required: true)

        def back(assigns) do
          unquote_splicing(maybe_raise_not_implemented)
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
          unquote_splicing(maybe_raise_not_implemented)
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
        slot(:text)
        slot(:subtitle)
        slot(:actions)

        def header(assigns) do
          unquote_splicing(maybe_raise_not_implemented)
          ~H"""
          <header class={["mt-2", @actions != [] && "mb-3", @class]}>
            <h1 class="">
              <%= render_slot(@inner_block) %>
            </h1>

            <h2 :if={@subtitle != []} class="mt-2">
              <%= render_slot(@subtitle) %>
            </h2>

            <div :if={@text != []}>
              <%= render_slot(@text) %>
            </div>

            <div class="mb-3">
              <%= render_slot(@actions) %>
            </div>
          </header>
          """
        end
      end

      CodeGen.block "bs5:table" do
        @doc ~S"""
        Renders a table with generic styling.

        ## Examples

        ```heex
        <.table id="users" rows={@users}>
          <:col :let={user} label="id"><%= user.id %></:col>
          <:col :let={user} label="username"><%= user.username %></:col>
        </.table>
        ```
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
          doc: "the function for mapping each row before calling the `:col` and `:action` slots"
        )

        slot :col, required: true do
          attr(:label, :string)
        end

        slot(:action, doc: "the slot for showing user actions in the last table column")

        def table(assigns) do
          unquote_splicing(maybe_raise_not_implemented)
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

                  <td :if={@action != []}>
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
          unquote_splicing(maybe_raise_not_implemented)
          JS.show(js, to: selector)
        end

        def hide(js \\ %JS{}, selector) do
          unquote_splicing(maybe_raise_not_implemented)
          JS.hide(js, to: selector, time: 200)
        end

        def show_modal(js \\ %JS{}, id) when is_binary(id) do
          unquote_splicing(maybe_raise_not_implemented)
          js
          |> JS.show(to: "##{id}")
          |> JS.show(to: "##{id}-bg")
          |> show("##{id}-container")
          |> JS.add_class("overflow-hidden", to: "body")
          |> JS.focus_first(to: "##{id}-content")
        end

        def hide_modal(js \\ %JS{}, id) do
          unquote_splicing(maybe_raise_not_implemented)
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
          unquote_splicing(maybe_raise_not_implemented)
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
          unquote_splicing(maybe_raise_not_implemented)
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

  # Input widgets

  defp vertical_input(maybe_raise_not_implemented) do
    quote do
      def input(%{field: %Phoenix.HTML.FormField{} = field} = assigns) do
        unquote_splicing(maybe_raise_not_implemented)
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
        unquote_splicing(maybe_raise_not_implemented)
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
              {@rest}
            /> <%= @label %>
          </label>

          <.error :for={msg <- @errors}><%= msg %></.error>
        </div>
        """
      end

      def input(%{type: "select"} = assigns) do
        unquote_splicing(maybe_raise_not_implemented)
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
        unquote_splicing(maybe_raise_not_implemented)
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

      def input(%{type: "hidden"} = assigns) do
        unquote_splicing(maybe_raise_not_implemented)
        ~H"""
        <input type="hidden" name={@name} value={@value} />
        """
      end

      def input(assigns) do
        unquote_splicing(maybe_raise_not_implemented)
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
end
