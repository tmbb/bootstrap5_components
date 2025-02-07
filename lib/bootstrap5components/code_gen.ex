defmodule Bootstrap5Components.CodeGen do
  @moduledoc false

  require Bootstrap5Components.Animations

  defmacro __code_gen__(options) do
    gettext_module = Keyword.fetch!(options, :gettext_module)
    user_supplied_icons_module = Keyword.fetch(options, :icons_module)
    static_assets_path = Keyword.get(options, :static_assets_path, "/_bs5components")
    sidebar_class = Keyword.get(options, :sidebar_width, "col-sm-3")
    main_content_class = Keyword.get(options, :main_content_width, "col-sm-9")
    documentation_only? = Keyword.get(options, :documentation_only?, false)
    use_is_valid_class? = Keyword.get(options, :use_is_valid_class, false)

    is_valid_class = if use_is_valid_class? do "is-valid" else "" end

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
      {:sigil_H, [delimiter: ~S(""")],
       [
         {:<<>>, [],
          [
            """
            <%= if @theme do %>
              <link phx-track-static href={"#{static_assets_path}/css/\#{@theme}.css"} rel="stylesheet" />
            <% end %>
            <link phx-track-static href={"#{static_assets_path}/css/animate.css"} rel="stylesheet" />
            <%= if @remote_select_widget do %>
              <script src={"#{static_assets_path}/js/jquery.min.js"}></script>
              <script src={"#{static_assets_path}/js/select2.min.js"}></script>
              <link phx-track-static href={"#{static_assets_path}/css/select2.min.css"} rel="stylesheet" />
              <%= if @remote_select_widget_right_to_left do %>
                <link phx-track-static href={"#{static_assets_path}/css/select2-bootstrap-5-theme.rtl.min.css"} rel="stylesheet" />
              <% else %>
                <link phx-track-static href={"#{static_assets_path}/css/select2-bootstrap-5-theme.min.css"} rel="stylesheet" />
              <% end %>
            <% end %>
            """
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

    plug_return_ast = {:quote, [context: __MODULE__], [[do: plug_ast]]}

    quote do
      alias Phoenix.LiveView.JS
      use Phoenix.Component
      use Gettext, backend: unquote(gettext_module)

      CodeGen.block "bs5:assets" do
        defmacro __using__(:assets) do
          unquote(plug_return_ast)
        end

        @doc """
        A component containing the references to all CSS and JS used by these components.

        [INSERT LVATTRDOCS]
        """

        attr(:theme, :string, default: nil,
          doc: "the bootswatch theme to use; use `nil` if you want a custom theme."
        )

        attr(:remote_select_widget, :boolean,
          default: true,
          doc: "whether to download the JS and CSS for the remote select widget"
        )

        attr(:remote_select_widget_right_to_left, :boolean,
          default: false,
          doc: "whether to add support for right to left text in the select widget"
        )

        def css_assets(%{theme: _theme} = assigns) do
          unquote_splicing(maybe_raise_not_implemented)
          unquote(css_assets_html)
        end
      end

      CodeGen.block "bs5:flop" do
        @doc """
        Default options for Flop tables that play well with Bootstrap5.

        Note: this is an argument one should pass to a Flop table component,
        not a standalone component.
        """
        def flop_table_options() do
          [
            table_attrs: [class: "table"]
          ]
        end

        @doc """
        Default options for Flop pagination that play well with Bootstrap5.

        Note: this is an argument one should pass to a Flop paginiation component,
        not a standalone component.
        """
        def flop_pagination_options() do
          [
            previous_link_content: {:safe, dgettext("pagination", "« Previous")},
            next_link_content: {:safe, dgettext("pagination", "Next »")},
            wrapper_attrs: [class: "navigation", role: "navigation", aria: [label: "pagination"]],
            previous_link_attrs: [class: "btn btn-primary", role: "button"],
            next_link_attrs: [class: "btn btn-primary", role: "button"],
            ellipsis_attrs: [class: "page-link disabled", "aria-disabled": true],
            pagination_list_attrs: [class: "pagination mt-2"],
            pagination_list_item_attrs: [class: "page-item"],
            pagination_link_attrs: [class: "page-link"],
            current_link_attrs: [class: "page-link active"],
            page_links: {:ellipsis, 5}
          ]
        end
      end

      CodeGen.block "bs5:modal" do
        @doc """
        Renders a modal.

        [INSERT LVATTRDOCS]

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
        attr(:close_button, :boolean, default: true)

        slot(:inner_block, required: true)
        slot(:title)
        slot(:subtitle)
        slot(:confirm)
        slot(:cancel)

        def modal(assigns) do
          unquote_splicing(maybe_raise_not_implemented)

          ~H"""
          <div id={@id}
               class="modal live-modal-background"
               phx-mounted={@show && show_modal(@id)}
               phx-remove={hide_modal(@id)}
               tabindex="-1">
            <div class="modal-dialog">
              <%# The next line is equivalent to `<div class="modal-content"/>...</div>` %>
              <.focus_wrap id={"#{@id}-container"}
                           class="modal-content focus-ring"
                           phx-mounted={@show && show_modal(@id)}
                           phx-click-away={@on_click_away}
                           phx-window-keydown={hide_modal(@on_cancel, @id)}
                           aria-labelledby={"#{@id}-title"}
                           aria-describedby={"#{@id}-description"}
                           role="dialog"
                           aria-modal="true"
                           tabindex="0">
                <div class="modal-header">
                  <h5 class="modal-title">
                    <span :for={title <- @title}><%= render_slot(title) %></span>
                  </h5>
                  <button :if={@close_button}
                          phx-click={hide_modal(@on_cancel, @id)}
                          type="button"
                          class="btn-close"
                          aria-label="Close">
                  </button>
                </div>
                <div class="modal-body">
                  <%= render_slot(@inner_block) %>
                </div>
                <div :if={@cancel != [] or @confirm != []} class="modal-footer">
                  <button :for={confirm <- @confirm}
                          phx-click={hide_modal(@on_confirm, @id)}
                          type="button"
                          class="btn btn-secondary">
                    <%= render_slot(confirm) %>
                  </button>
                  <button :for={confirm <- @cancel}
                          phx-click={hide_modal(@on_cancel, @id)}
                          type="button"
                          class="btn btn-primary">
                    <%= render_slot(confirm) %>
                  </button>
                </div>
              </.focus_wrap>
            </div>
          </div>
          """
        end

        def show_modal(js \\ %JS{}, id) when is_binary(id) do
          unquote_splicing(maybe_raise_not_implemented)

          js
          |> JS.show(to: "##{id}")
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

      CodeGen.block "bs5:layout" do
        @doc """
        Area for the main content below the nabvar, supporting
        slots for the content itself and for an optional sidebar.
        """

        slot(:sidebar, required: false)

        slot(:content, required: true)

        attr(:hide_sidebar, :boolean, default: false)
        attr(:sidebar_class, :string, default: unquote(sidebar_class))
        attr(:sidebar_body_class, :string, default: "")
        attr(:content_class, :string, default: unquote(main_content_class))

        def main(assigns) do
          unquote_splicing(maybe_raise_not_implemented)

          ~H"""
          <main>
            <div :if={!@hide_sidebar} class="container-fluid row">
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
            <div :if={@hide_sidebar} class="container-fluid row">
              <div>
                <%= render_slot(@content) %>
              </div>
            </div>
          </main>
          """
        end

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
          <a class="btn btn-primary text-start w-100" href={@to} >
            <%= render_slot(@inner_block) %>
          </a>
          """
        end
      end

      CodeGen.block "bs5:navbar" do
        @doc """
        Navbar component.
        """

        attr(:class, :string, default: "navbar-dark bg-primary")

        slot(:brand,
          required: false,
          doc: "Branding element (e.g. the application name or a logo) for your navbar"
        )

        slot(:start_group,
          required: false,
          doc: "content at the start (i.e. left for LTR writing systems) of the navbar"
        )

        slot(:center_group, required: false, doc: "content at the center of the navbar")

        slot(:end_group,
          required: false,
          doc: "content at the end (i.e. right for LTR writing systems) of the navbar"
        )

        def navbar(assigns) do
          unquote_splicing(maybe_raise_not_implemented)

          ~H"""
          <header class={["navbar navbar-expand-lg", @class]} >
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
              ]}
              href={@to}
              method={@method}
              >
            <%= render_slot(@inner_block) %>
          </.link>
          """
        end
      end

      CodeGen.block "bs5:bulk_action" do
        @doc """
        A component for bulk actions that can take the ids of multiple targets.
        """

        attr :id, :string, required: true
        attr :active, :boolean, required: true
        attr :on_submit, :string, default: "bulk_action"
        attr :on_change, :string, default: "selected_for_bulk_action"
        attr :rest, :global

        slot :action do
          attr :navigate, :string, required: false
          attr :name, :string, required: false
          attr :class, :string, required: false
          attr :confirmation_dialog, :string, required: false
        end

        def bulk_action(assigns) do
          ~H"""
          <.form :let={f} for={%{}} phx-submit={@on_submit} phx-change={@on_change} {@rest}>
            <span :for={action <- @action}>
              <.link
                  :if={Map.get(action, :navigate)}
                  navigate={Map.get(action, :navigate)}
                  class={Map.get(action, :class, "btn btn-primary")}>
                <%= render_slot(action, f) %>
              </.link>
              <.button
                  :if={Map.get(action, :name)}
                  phx-click={
                    Map.get(action, :confirmation_dialog) &&
                    show_modal(Map.get(action, :confirmation_dialog))
                  }
                  type="submit"
                  name="action"
                  value={Map.get(action, :name)}
                  class={Map.get(action, :class, "btn btn-primary")}
                  aria-disabled={to_string(not @active)}
                  disabled={not @active}>
                <%= render_slot(action, f) %>
              </.button>
            </span>

            <%= render_slot(@inner_block, f) %>
          </.form>
          """
        end

        attr :target, :any, required: true
        attr :aria_label, :string, default: "..."

        @doc """
        A checkbox to select an id for a bulk action.
        """

        def bulk_action_select(assigns) do
          ~H"""
          <input type="checkbox"
                class="form-check-input"
                aria-label={@aria_label}
                id={"selected_#{@target}"}
                name={"selected[]"}
                value={@target}/>
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
            phx-mounted={@autoshow && auto_hide_flash(kind: @kind)}
            phx-click={JS.push("lv:clear-flash", value: %{key: @kind}) |> hide("##{@id}")}
            role="alert"
            class={[
              "card position-relative px-2 py-2",
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
              phx-click={JS.push("lv:clear-flash", value: %{key: @kind}) |> hide("##{@id}")}
            >
            </button>
          </div>
          """
        end

        def auto_hide_flash(js \\ %JS{}, opts) do
          time = Keyword.get(opts, :time, 3000)
          kind = Keyword.fetch!(opts, :kind)
          transition = Keyword.get(opts, :transition, animate_fade_in())

          js
          |> JS.show()
          |> JS.transition(transition, time: time)
          |> JS.push("lv:clear-flash", value: %{key: kind})
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
          <div class="position-absolute top-0 end-0 mt-4 me-4" >
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

        attr(:tight_spacing, :boolean, default: false, doc: "remove the extra top margin")

        attr(:rest, :global,
          include: ~w(autocomplete cols disabled form max maxlength min minlength
                                        pattern placeholder readonly required rows size step)
        )

        slot(:inner_block)

        unquote(vertical_input(maybe_raise_not_implemented, is_valid_class))
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
          <div >
            <dl>
              <div :for={item <- @item}>
                <dt><%= item.title %></dt>
                <dd><%= render_slot(item) %></dd>
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
        attr(:title, :string, required: false, default: nil)
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
          <label for={@for} class="form-label" >
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
          <div class="mt-16" >
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
          <p class="invalid-feedback mt-3" >
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
          <header class={["mt-2", @actions != [] && "mb-3", @class]} >
            <h1>
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

        attr(:class, :string,
          default: "table",
          doc: "class(es) for your table; by default the `table` class is used"
        )

        attr(:row_click, :any,
          default: nil,
          doc: "the function for handling phx-click on each row"
        )

        attr(:row_item, :any,
          default: &Function.identity/1,
          doc: "the function for mapping each row before calling the `:col` and `:action` slots"
        )

        attr(:reorderable, :boolean,
          default: false,
          doc: "wether the table rows can be reordered by the user"
        )

        attr(:reorderable_event_name, :string,
          default: "reordered",
          doc: "name of the event sent to the LiveView when the items are reordered"
        )

        attr(:reorderable_animation_duration, :integer,
          default: 150,
          doc: "animation duration"
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
          <table class={@class} >
            <thead>
              <tr>
                <th :for={col <- @col} class=""><%= col[:label] %></th>
                <th><%= gettext("Actions") %></th>
              </tr>
            </thead>

            <tbody
              id={@id}
              phx-update={match?(%Phoenix.LiveView.LiveStream{}, @rows) && "stream"}
            >
              <tr :for={row <- @rows} id={@row_id && @row_id.(row)}
                  data-list_id={@row_id && @row_id.(row)}>
                <td
                  :for={{col, i} <- Enum.with_index(@col)}
                  phx-click={@row_click && @row_click.(row)}
                  class={[""]}

                >
                  <span class="" />
                  <span class={["relative", i == 0 && ""]}>
                    <%= render_slot(col, @row_item.(row)) %>
                  </span>
                </td>

                <td :if={@action != []}>
                  <span :for={action <- @action}>
                    <%= render_slot(action, @row_item.(row)) %>
                  </span>
                </td>
              </tr>
            </tbody>
          </table>
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

      CodeGen.block "bs5:animations" do
        unquote(
          Bootstrap5Components.Animations.insert_animations_ast(
            maybe_raise_not_implemented
          )
        )
      end


      CodeGen.block "bs5:nested_inputs" do
        attr :field, Phoenix.HTML.FormField, required: true

        attr :sort_param, Phoenix.HTML.FormField,
          required: true,
          doc: "the parameter used by Ecto to sort your inputs"

        attr :drop_param, Phoenix.HTML.FormField,
          required: false,
          default: nil,
          doc: """
            this attribute is optional if you don't want to support input deletion,
            but it is required if you want to use the `<delete_input input={}/>` component.
            """

        attr :moved_animation, :any, default: "animate__animated animate__pulse animate__faster"

        def non_movable_inputs_for(assigns) do
          unquote_splicing(maybe_raise_not_implemented)

          field = assigns.field

          special_options = [
            inner_inputs__sort_param: minimal_form_field(assigns.sort_param),
            inner_inputs__drop_param: minimal_form_field(assigns.drop_param),
            inner_inputs__nr_of_inputs: field.value |> Enum.into([]) |> length()
          ]

          assigns = assign(assigns, input_form_options: special_options)

          ~H"""
          <.inputs_for
              :let={inner_form}
              field={@field}
              skip_hidden={true}
              options={@input_form_options}>
              <%# We set the id to a different value when
                we have just moved that item, so that transitions work properly %>
              <div
                id={inner_form.id}
                data-movable-item={inner_form.id}>

              <%# I don't really understand the purpose of this attribute,
                  but it's better to keep it for now %>
              <input
                  type="hidden"
                  name={inner_form[:_persistent_id].name}
                  value={inner_form[:_persistent_id].value} />

              <%# Add the id for the input here, so that the user
                  doesn't have to add it later.
                  Maybe make this configurable in the future? %>
              <input
                  type="hidden"
                  name={inner_form[:id].name}
                  value={inner_form[:id].value} />

              <%# The sorting values, which will be kept in order.
                  The only way to change the order of the items is
                  by using the "move-up" and "move-down" buttons.
                  However, keeping these sort indices will let us
                  reuse the already existing Ecto functionality,
                  which is very complete. %>
              <input
                  type="hidden"
                  id={"#{@sort_param.id}_#{inner_form.index}"}
                  name={@sort_param.name <> "[]"}
                  value={inner_form.index} />

              <%= render_slot(@inner_block, inner_form) %>
            </div>
          </.inputs_for>
          """
        end

        attr :field, Phoenix.HTML.FormField, required: true

        attr :sort_param, Phoenix.HTML.FormField,
          required: true,
          doc: "the parameter used by Ecto to sort your inputs"

        attr :move_param, Phoenix.HTML.FormField,
          required: true,
          doc: "the parameter that represents the item to be moved"

        attr :moved_param, Phoenix.HTML.FormField,
          required: true,
          doc: "the parameter that represents the item that has been moved"

        attr :drop_param, Phoenix.HTML.FormField,
          required: false,
          default: nil,
          doc: """
            this attribute is optional if you don't want to support input deletion,
            but it is required if you want to use the `<delete_input input={}/>` component.
            """

        attr :moved_animation, :any, default: "animate__animated animate__pulse animate__faster"

        def movable_inputs_for(assigns) do
          unquote_splicing(maybe_raise_not_implemented)

          field = assigns.field

          special_options = [
            inner_inputs__sort_param: minimal_form_field(assigns.sort_param),
            inner_inputs__move_param: minimal_form_field(assigns.move_param),
            inner_inputs__moved_param: minimal_form_field(assigns.moved_param),
            inner_inputs__drop_param: minimal_form_field(assigns.drop_param),
            inner_inputs__nr_of_inputs: field.value |> Enum.into([]) |> length()
          ]

          assigns = assign(assigns, input_form_options: special_options)

          ~H"""
          <.inputs_for
              :let={movable_form}
              field={@field}
              skip_hidden={true}
              options={@input_form_options}>
              <%# We set the id to a different value when
                we have just moved that item, so that transitions work properly %>
              <div
                id={movable_form.id}
                data-movable-item={movable_form.id}
                class={[
                  if @moved_param.value == movable_form.index do
                    @moved_animation
                  else
                    ""
                  end
                ]}>

              <%# I don't really understand the purpose of this attribute,
                  but it's better to keep it for now %>
              <input
                  type="hidden"
                  name={movable_form[:_persistent_id].name}
                  value={movable_form[:_persistent_id].value} />

              <%# Add the id for the input here, so that the user
                  doesn't have to add it later.
                  Maybe make this configurable in the future? %>
              <input
                  type="hidden"
                  name={movable_form[:id].name}
                  value={movable_form[:id].value} />

              <%# The sorting values, which will be kept in order.
                  The only way to change the order of the items is
                  by using the "move-up" and "move-down" buttons.
                  However, keeping these sort indices will let us
                  reuse the already existing Ecto functionality,
                  which is very complete. %>
              <input
                  type="hidden"
                  id={"#{@sort_param.id}_#{movable_form.index}"}
                  name={@sort_param.name <> "[]"}
                  value={movable_form.index} />

              <%= render_slot(@inner_block, movable_form) %>
            </div>
          </.inputs_for>
          """
        end

        # Remove unused data from a field to save on memory.
        # This will be useful when we only need the field names
        # and field ID for the HTML elements.

        defp minimal_form_field(nil), do: nil

        defp minimal_form_field(%Phoenix.HTML.FormField{} = form_field) do
          %Phoenix.HTML.FormField{
            id: form_field.id,
            name: form_field.name,
            errors: [],
            field: nil,
            form: nil,
            value: form_field.value || ""
          }
        end

        @doc """
        A component to move an element up in an association.
        To move up an element in an association is the same as movinbg it
        towards the beginning of the list.

        [INSERT LVATTRDOCS]
        """

        attr :input, Phoenix.HTML.FormField, doc: "the input to be moved"

        attr :animation, :string, default: "animate__animated animate__fadeOut animate__faster"

        attr :tooltip, :string, default: nil,
          doc: "tooltip for the action"

        attr :group_class, :string,
          default: "btn btn-group",
          doc: "CSS class for the outer element (a <div/> element)"

        attr :move_up_class, :string,
          default: "btn btn-sm btn-outline-dark",
          doc: "CSS class for the move-up element (a <label/> element)"

        attr :move_down_class, :string,
          default: "btn btn-sm btn-outline-dark",
          doc: "CSS class for the move-down element (a <label/> element)"

        attr :cursor, :string,
          default: "pointer",
          doc: "CSS cursor style while hovering the button"


        attr :cursor_when_disabled, :string,
          default: "default",
          doc: "CSS cursor style while hovering the disabled button"

        slot :move_up, required: false, do: "contents for the move-up widget"

        slot :move_down, required: false, do: "contents for the move-down widget"

        def move_input(assigns) do
          unquote_splicing(maybe_raise_not_implemented)

          input = Map.get(assigns, :input)
          move_param = Keyword.fetch!(input.options, :inner_inputs__move_param)
          moved_param = Keyword.fetch!(input.options, :inner_inputs__moved_param)
          nr_of_items = Keyword.fetch!(input.options, :inner_inputs__nr_of_inputs)

          first? = input.index == 0
          last? = input.index == nr_of_items - 1

          assigns = assign(assigns,
            move_param: move_param,
            moved_param: moved_param,
            nr_of_items: nr_of_items,
            first?: first?,
            last?: last?
          )

          ~H"""
          <div class={@group_class} style="cursor:default">
            <label
                id={"#{@move_param.name}__up_#{@input.index}"}
                style={if @first? do "cursor:#{@cursor_when_disabled}" else "cursor:#{@cursor}" end}
                class={[@move_up_class, if @first? do "disabled" end]}
                disabled={@first?}>

              <% move_up_contents = render_slot(@move_up) %>
              <%= if move_up_contents do %>
                <%= move_up_contents %>
              <% else %>
                <.icon name="chevron-up" /> <%= dgettext("movable_inputs", "Move up") %>
              <% end %>

              <input
                  type="checkbox"
                  name={"#{@move_param.name}[up]"}
                  value={@input.index}
                  hidden/>
            </label>

            <label
                id={"#{@move_param.name}__down_#{@input.index}"}
                style={if @last? do "cursor:#{@cursor_when_disabled}" else "cursor:#{@cursor}" end}
                class={[@move_down_class, if @last? do "disabled" end]}>

              <% move_down_contents = render_slot(@move_up) %>
              <%= if move_down_contents do %>
                <%= move_down_contents %>
              <% else %>
                <.icon name="chevron-down" /> <%= dgettext("movable_inputs", "Move down") %>
              <% end %>

              <input
                  type="checkbox"
                  name={"#{@move_param.name}[down]"}
                  value={@input.index}
                  hidden/>
            </label>
          </div>
          """
        end

        attr :sort_param, Phoenix.HTML.FormField, doc: "sort field for the association"

        attr :cursor, :string,
          default: "pointer",
          doc: "CSS cursor style while hovering the button"

        attr :tooltip, :string, default: nil,
          doc: "tooltip for the action"

        attr :class, :string,
          default: "btn btn-primary mt-3 form-control",
          doc: "CSS class for the outer element (a <label/> element)"

        @doc """
        A component that adds a new item to a list of movable inputs.
        This component is meant to be used inside `<.movable_inputs_for />` component.
        """
        def add_new_input(assigns) do
          unquote_splicing(maybe_raise_not_implemented)

          ~H"""
          <label class={@class} style={"cursor:" <> @cursor} title={@tooltip}>
            <input
                type="checkbox"
                name={@sort_param.name <> "[]"}
                value="new"
                hidden />

            <%= render_slot(@inner_block) %>
          </label>
          """
        end

        attr :input, Phoenix.HTML.FormField, doc: "the input to be deleted"

        attr :drop_param, Phoenix.HTML.FormField, doc: "drop param for the association"

        attr :animation, :string, default: "animate__animated animate__fadeOutRight animate__faster",
          doc: "classes to add to the deleted element before removing it"

        attr :animation_duration, :integer, default: 300,
          doc: "classes to add to the deleted element before removing it"

        attr :tooltip, :string, default: nil,
          doc: "tooltip for the action"

        attr :class, :string,
          default: "btn btn-sm btn-outline-danger",
          doc: "CSS class for the outer element (a <label/> element)"

        attr :cursor, :string,
          default: "pointer",
          doc: "CSS cursor style while hovering the button"

        @doc """
        A component that deletes an item from moveable inputs.
        This component is meant to be used inside `<.movable_inputs_for />` component.
        """
        def delete_input(assigns) do
          unquote_splicing(maybe_raise_not_implemented)

          input = assigns.input
          drop_param = Keyword.get(input.options, :inner_inputs__drop_param)

          if is_nil(drop_param) do
            raise ArgumentError, """
              Can't use `<delete_input/>` component on input value because you haven't \
              specified a `drop_param={...}` attribute in the `<movable_inputs_for/>`.
              """
          end

          assigns = assign(assigns, drop_param: drop_param)

          ~H"""
          <label
              class={@class}
              style={"cursor:" <> @cursor}
              title={@tooltip}
              phx-click={
                JS.transition(@animation,
                  to: "[data-movable-item='#{@input.id}']",
                  time: @animation_duration)
              }>

            <input
                type="checkbox"
                name={@drop_param.name <> "[]"}
                value={@input.index}
                hidden />

            <%= render_slot(@inner_block) %>
          </label>
          """
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
                     non_movable_inputs_for: 1,
                     movable_inputs_for: 1,
                     move_input: 1,
                     delete_input: 1,
                     add_new_input: 1,
                     __using__: 1
    end
  end

  # Input widgets

  defp vertical_input(maybe_raise_not_implemented, is_valid_class) do
    quote do
      def input(%{field: %Phoenix.HTML.FormField{} = field} = assigns) do
        unquote_splicing(maybe_raise_not_implemented)
        errors = if Phoenix.Component.used_input?(field), do: field.errors, else: []

        assigns
        |> assign(field: nil, id: assigns.id || field.id)
        |> assign(:errors, Enum.map(errors, &translate_error(&1)))
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
        <div class={@tight_spacing && "" || "mb-3"} phx-feedback-for={@name}>
          <label :if={@label} class="control-label">
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

          <input :if={!@label} type="hidden" name={@name} value="false" />
          <input
            :if={!@label}
            type="checkbox"
            id={@id || @name}
            name={@name}
            value="true"
            checked={@checked}
            {@rest}
          />

          <.error :for={msg <- @errors}><%= msg %></.error>
        </div>
        """
      end

      def input(%{type: "select"} = assigns) do
        unquote_splicing(maybe_raise_not_implemented)
        assigns =
          assigns
          |> assign(:is_valid_class, unquote(is_valid_class))
          |> assign_new(:prompt, fn -> "" end)

        ~H"""
        <div class={@tight_spacing && "" || "mb-3"} phx-feedback-for={@name}>
          <.label :if={@label} for={@id}><%= @label %></.label>

          <select
            id={@id}
            name={@name}
            class={[
              "form-control",
              (if @errors == [] do @is_valid_class else "is-invalid" end)
            ]}
            multiple={@multiple}
            {@rest}
          >
            <option value=""><%= @prompt %></option>
            <%= Phoenix.HTML.Form.options_for_select(@options, @value) %>
          </select>

          <.error :for={msg <- @errors}><%= msg %></.error>
        </div>
        """
      end

      def input(%{type: "textarea"} = assigns) do
        unquote_splicing(maybe_raise_not_implemented)
        assigns = assign(assigns, :is_valid_class, unquote(is_valid_class))

        ~H"""
        <div class={@tight_spacing && "" || "mb-3"} phx-feedback-for={@name}>
          <.label :if={@label} for={@id}><%= @label %></.label>
          <textarea
            id={@id || @name}
            name={@name}
            class={[
              "form-control",
              (if @errors == [] do @is_valid_class else "is-invalid" end)
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
        assigns = assign(assigns, :is_valid_class, unquote(is_valid_class))

        ~H"""
        <div class={@tight_spacing && "" || "mb-3"} phx-feedback-for={@name}>
          <.label :if={@label} for={@id}><%= @label %></.label>

          <input
            type={@type}
            name={@name}
            id={@id || @name}
            value={Phoenix.HTML.Form.normalize_value(@type, @value)}
            class={[
              "form-control",
              (if @errors == [] do @is_valid_class else "is-invalid" end)
            ]}
            {@rest}
          />
          <.error :for={msg <- @errors}><%= msg %></.error>
        </div>
        """
      end

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

      attr(:path, :string)

      attr(:field, Phoenix.HTML.FormField,
        doc: "a form field struct retrieved from the form, for example: @form[:email]"
      )

      attr(:errors, :list, default: [])
      attr(:checked, :boolean, doc: "the checked flag for checkbox inputs")
      attr(:prompt, :string, default: nil, doc: "the prompt for select inputs")

      attr(:options, :list, default: [], doc: "the already chosen elements")

      attr(:multiple, :boolean, default: false, doc: "the multiple flag for select inputs")

      attr(:rest, :global,
        include: ~w(autocomplete cols disabled form max maxlength min minlength
                                      pattern placeholder readonly required rows size step)
      )

      def remote_select_input(%{field: %Phoenix.HTML.FormField{} = field} = assigns) do
        unquote_splicing(maybe_raise_not_implemented)

        options = Map.get(assigns, :options)

        assigns =
          assigns
          |> assign(field: nil, id: assigns[:id] || field.id)
          |> assign(:errors, Enum.map(field.errors, &translate_error(&1)))
          |> assign_new(:name, fn ->
            if assigns.multiple, do: field.name <> "[]", else: field.name
          end)
          |> assign_new(:value, fn -> field.value end)
          |> assign(:is_valid_class, unquote(is_valid_class))

        html_options =
          for item <- options do
            [value: item.data.id, key: item.data.__struct__.as_text(item.data)]
          end

        selected = for item <- options, do: item.data.id

        assigns =
          assigns
          |> Map.put(:html_options, html_options)
          |> Map.put(:selected, selected)

        ~H"""
        <div class="mb-3" phx-feedback-for={@name}>
          <.label :if={@label} for={@id}><%= @label %></.label>

          <select
            id={@id}
            name={@name}
            data-bs5-select2-widget="true"
            data-url={@path}
            class={[
              "form-control",
              (if @errors == [] do @
              is_valid_class else "is-invalid" end)
            ]}
            multiple={@multiple}
            {@rest}
          >
            <%= Phoenix.HTML.Form.options_for_select(@html_options, @selected) %>
          </select>

          <.error :for={msg <- @errors}><%= msg %></.error>
        </div>
        """
      end
    end
  end
end
