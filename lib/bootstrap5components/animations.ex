defmodule Bootstrap5Components.Animations do
  @moduledoc false

  def insert_animations_ast(maybe_raise_not_implemented) do
    quote do
      defp speed_to_css_class(:normal), do: ""
      defp speed_to_css_class(:fast), do: "animate__fast"
      defp speed_to_css_class(:faster), do: "animate__faster"

      defp repeat_to_css_class(false), do: ""
      defp repeat_to_css_class(true), do: "animate__infinite"

      # START:BS5-ANIMATIONS
      @doc """
      Animate with a bounce pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_bounce(speed: :normal, repeat: true)}>
        Animate as <strong>bounce</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounce animate__infinite">
          Animate as <strong>bounce</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_bounce(speed: :fast, repeat: true)}>
        Animate as <strong>bounce</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounce animate__fast animate__infinite">
          Animate as <strong>bounce</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_bounce(speed: :faster, repeat: true)}>
        Animate as <strong>bounce</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounce animate__faster animate__infinite">
          Animate as <strong>bounce</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_bounce(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__bounce #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a flash pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_flash(speed: :normal, repeat: true)}>
        Animate as <strong>flash</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__flash animate__infinite">
          Animate as <strong>flash</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_flash(speed: :fast, repeat: true)}>
        Animate as <strong>flash</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__flash animate__fast animate__infinite">
          Animate as <strong>flash</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_flash(speed: :faster, repeat: true)}>
        Animate as <strong>flash</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__flash animate__faster animate__infinite">
          Animate as <strong>flash</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_flash(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__flash #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a pulse pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_pulse(speed: :normal, repeat: true)}>
        Animate as <strong>pulse</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__pulse animate__infinite">
          Animate as <strong>pulse</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_pulse(speed: :fast, repeat: true)}>
        Animate as <strong>pulse</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__pulse animate__fast animate__infinite">
          Animate as <strong>pulse</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_pulse(speed: :faster, repeat: true)}>
        Animate as <strong>pulse</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__pulse animate__faster animate__infinite">
          Animate as <strong>pulse</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_pulse(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__pulse #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a rubber band pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_rubber_band(speed: :normal, repeat: true)}>
        Animate as <strong>rubber band</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rubberBand animate__infinite">
          Animate as <strong>rubber band</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_rubber_band(speed: :fast, repeat: true)}>
        Animate as <strong>rubber band</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rubberBand animate__fast animate__infinite">
          Animate as <strong>rubber band</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_rubber_band(speed: :faster, repeat: true)}>
        Animate as <strong>rubber band</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rubberBand animate__faster animate__infinite">
          Animate as <strong>rubber band</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_rubber_band(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__rubberBand #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a shake x pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_shake_x(speed: :normal, repeat: true)}>
        Animate as <strong>shake x</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__shakeX animate__infinite">
          Animate as <strong>shake x</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_shake_x(speed: :fast, repeat: true)}>
        Animate as <strong>shake x</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__shakeX animate__fast animate__infinite">
          Animate as <strong>shake x</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_shake_x(speed: :faster, repeat: true)}>
        Animate as <strong>shake x</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__shakeX animate__faster animate__infinite">
          Animate as <strong>shake x</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_shake_x(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__shakeX #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a shake y pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_shake_y(speed: :normal, repeat: true)}>
        Animate as <strong>shake y</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__shakeY animate__infinite">
          Animate as <strong>shake y</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_shake_y(speed: :fast, repeat: true)}>
        Animate as <strong>shake y</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__shakeY animate__fast animate__infinite">
          Animate as <strong>shake y</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_shake_y(speed: :faster, repeat: true)}>
        Animate as <strong>shake y</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__shakeY animate__faster animate__infinite">
          Animate as <strong>shake y</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_shake_y(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__shakeY #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a head shake pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_head_shake(speed: :normal, repeat: true)}>
        Animate as <strong>head shake</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__headShake animate__infinite">
          Animate as <strong>head shake</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_head_shake(speed: :fast, repeat: true)}>
        Animate as <strong>head shake</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__headShake animate__fast animate__infinite">
          Animate as <strong>head shake</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_head_shake(speed: :faster, repeat: true)}>
        Animate as <strong>head shake</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__headShake animate__faster animate__infinite">
          Animate as <strong>head shake</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_head_shake(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__headShake #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a swing pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_swing(speed: :normal, repeat: true)}>
        Animate as <strong>swing</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__swing animate__infinite">
          Animate as <strong>swing</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_swing(speed: :fast, repeat: true)}>
        Animate as <strong>swing</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__swing animate__fast animate__infinite">
          Animate as <strong>swing</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_swing(speed: :faster, repeat: true)}>
        Animate as <strong>swing</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__swing animate__faster animate__infinite">
          Animate as <strong>swing</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_swing(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__swing #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a tada pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_tada(speed: :normal, repeat: true)}>
        Animate as <strong>tada</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__tada animate__infinite">
          Animate as <strong>tada</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_tada(speed: :fast, repeat: true)}>
        Animate as <strong>tada</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__tada animate__fast animate__infinite">
          Animate as <strong>tada</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_tada(speed: :faster, repeat: true)}>
        Animate as <strong>tada</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__tada animate__faster animate__infinite">
          Animate as <strong>tada</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_tada(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__tada #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a wobble pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_wobble(speed: :normal, repeat: true)}>
        Animate as <strong>wobble</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__wobble animate__infinite">
          Animate as <strong>wobble</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_wobble(speed: :fast, repeat: true)}>
        Animate as <strong>wobble</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__wobble animate__fast animate__infinite">
          Animate as <strong>wobble</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_wobble(speed: :faster, repeat: true)}>
        Animate as <strong>wobble</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__wobble animate__faster animate__infinite">
          Animate as <strong>wobble</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_wobble(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__wobble #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a jello pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_jello(speed: :normal, repeat: true)}>
        Animate as <strong>jello</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__jello animate__infinite">
          Animate as <strong>jello</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_jello(speed: :fast, repeat: true)}>
        Animate as <strong>jello</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__jello animate__fast animate__infinite">
          Animate as <strong>jello</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_jello(speed: :faster, repeat: true)}>
        Animate as <strong>jello</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__jello animate__faster animate__infinite">
          Animate as <strong>jello</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_jello(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__jello #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a heart beat pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_heart_beat(speed: :normal, repeat: true)}>
        Animate as <strong>heart beat</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__heartBeat animate__infinite">
          Animate as <strong>heart beat</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_heart_beat(speed: :fast, repeat: true)}>
        Animate as <strong>heart beat</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__heartBeat animate__fast animate__infinite">
          Animate as <strong>heart beat</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_heart_beat(speed: :faster, repeat: true)}>
        Animate as <strong>heart beat</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__heartBeat animate__faster animate__infinite">
          Animate as <strong>heart beat</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_heart_beat(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__heartBeat #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a back in down pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_back_in_down(speed: :normal, repeat: true)}>
        Animate as <strong>back in down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backInDown animate__infinite">
          Animate as <strong>back in down</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_back_in_down(speed: :fast, repeat: true)}>
        Animate as <strong>back in down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backInDown animate__fast animate__infinite">
          Animate as <strong>back in down</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_back_in_down(speed: :faster, repeat: true)}>
        Animate as <strong>back in down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backInDown animate__faster animate__infinite">
          Animate as <strong>back in down</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_back_in_down(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__backInDown #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a back in left pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_back_in_left(speed: :normal, repeat: true)}>
        Animate as <strong>back in left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backInLeft animate__infinite">
          Animate as <strong>back in left</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_back_in_left(speed: :fast, repeat: true)}>
        Animate as <strong>back in left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backInLeft animate__fast animate__infinite">
          Animate as <strong>back in left</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_back_in_left(speed: :faster, repeat: true)}>
        Animate as <strong>back in left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backInLeft animate__faster animate__infinite">
          Animate as <strong>back in left</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_back_in_left(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__backInLeft #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a back in right pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_back_in_right(speed: :normal, repeat: true)}>
        Animate as <strong>back in right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backInRight animate__infinite">
          Animate as <strong>back in right</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_back_in_right(speed: :fast, repeat: true)}>
        Animate as <strong>back in right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backInRight animate__fast animate__infinite">
          Animate as <strong>back in right</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_back_in_right(speed: :faster, repeat: true)}>
        Animate as <strong>back in right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backInRight animate__faster animate__infinite">
          Animate as <strong>back in right</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_back_in_right(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__backInRight #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a back in up pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_back_in_up(speed: :normal, repeat: true)}>
        Animate as <strong>back in up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backInUp animate__infinite">
          Animate as <strong>back in up</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_back_in_up(speed: :fast, repeat: true)}>
        Animate as <strong>back in up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backInUp animate__fast animate__infinite">
          Animate as <strong>back in up</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_back_in_up(speed: :faster, repeat: true)}>
        Animate as <strong>back in up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backInUp animate__faster animate__infinite">
          Animate as <strong>back in up</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_back_in_up(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__backInUp #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a back out down pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_back_out_down(speed: :normal, repeat: true)}>
        Animate as <strong>back out down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backOutDown animate__infinite">
          Animate as <strong>back out down</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_back_out_down(speed: :fast, repeat: true)}>
        Animate as <strong>back out down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backOutDown animate__fast animate__infinite">
          Animate as <strong>back out down</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_back_out_down(speed: :faster, repeat: true)}>
        Animate as <strong>back out down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backOutDown animate__faster animate__infinite">
          Animate as <strong>back out down</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_back_out_down(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__backOutDown #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a back out left pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_back_out_left(speed: :normal, repeat: true)}>
        Animate as <strong>back out left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backOutLeft animate__infinite">
          Animate as <strong>back out left</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_back_out_left(speed: :fast, repeat: true)}>
        Animate as <strong>back out left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backOutLeft animate__fast animate__infinite">
          Animate as <strong>back out left</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_back_out_left(speed: :faster, repeat: true)}>
        Animate as <strong>back out left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backOutLeft animate__faster animate__infinite">
          Animate as <strong>back out left</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_back_out_left(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__backOutLeft #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a back out right pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_back_out_right(speed: :normal, repeat: true)}>
        Animate as <strong>back out right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backOutRight animate__infinite">
          Animate as <strong>back out right</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_back_out_right(speed: :fast, repeat: true)}>
        Animate as <strong>back out right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backOutRight animate__fast animate__infinite">
          Animate as <strong>back out right</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_back_out_right(speed: :faster, repeat: true)}>
        Animate as <strong>back out right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backOutRight animate__faster animate__infinite">
          Animate as <strong>back out right</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_back_out_right(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__backOutRight #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a back out up pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_back_out_up(speed: :normal, repeat: true)}>
        Animate as <strong>back out up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backOutUp animate__infinite">
          Animate as <strong>back out up</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_back_out_up(speed: :fast, repeat: true)}>
        Animate as <strong>back out up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backOutUp animate__fast animate__infinite">
          Animate as <strong>back out up</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_back_out_up(speed: :faster, repeat: true)}>
        Animate as <strong>back out up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__backOutUp animate__faster animate__infinite">
          Animate as <strong>back out up</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_back_out_up(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__backOutUp #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a bounce in pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_bounce_in(speed: :normal, repeat: true)}>
        Animate as <strong>bounce in</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceIn animate__infinite">
          Animate as <strong>bounce in</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_bounce_in(speed: :fast, repeat: true)}>
        Animate as <strong>bounce in</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceIn animate__fast animate__infinite">
          Animate as <strong>bounce in</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_bounce_in(speed: :faster, repeat: true)}>
        Animate as <strong>bounce in</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceIn animate__faster animate__infinite">
          Animate as <strong>bounce in</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_bounce_in(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__bounceIn #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a bounce in down pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_bounce_in_down(speed: :normal, repeat: true)}>
        Animate as <strong>bounce in down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceInDown animate__infinite">
          Animate as <strong>bounce in down</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_bounce_in_down(speed: :fast, repeat: true)}>
        Animate as <strong>bounce in down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceInDown animate__fast animate__infinite">
          Animate as <strong>bounce in down</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_bounce_in_down(speed: :faster, repeat: true)}>
        Animate as <strong>bounce in down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceInDown animate__faster animate__infinite">
          Animate as <strong>bounce in down</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_bounce_in_down(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__bounceInDown #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a bounce in left pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_bounce_in_left(speed: :normal, repeat: true)}>
        Animate as <strong>bounce in left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceInLeft animate__infinite">
          Animate as <strong>bounce in left</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_bounce_in_left(speed: :fast, repeat: true)}>
        Animate as <strong>bounce in left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceInLeft animate__fast animate__infinite">
          Animate as <strong>bounce in left</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_bounce_in_left(speed: :faster, repeat: true)}>
        Animate as <strong>bounce in left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceInLeft animate__faster animate__infinite">
          Animate as <strong>bounce in left</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_bounce_in_left(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__bounceInLeft #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a bounce in right pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_bounce_in_right(speed: :normal, repeat: true)}>
        Animate as <strong>bounce in right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceInRight animate__infinite">
          Animate as <strong>bounce in right</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_bounce_in_right(speed: :fast, repeat: true)}>
        Animate as <strong>bounce in right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceInRight animate__fast animate__infinite">
          Animate as <strong>bounce in right</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_bounce_in_right(speed: :faster, repeat: true)}>
        Animate as <strong>bounce in right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceInRight animate__faster animate__infinite">
          Animate as <strong>bounce in right</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_bounce_in_right(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__bounceInRight #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a bounce in up pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_bounce_in_up(speed: :normal, repeat: true)}>
        Animate as <strong>bounce in up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceInUp animate__infinite">
          Animate as <strong>bounce in up</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_bounce_in_up(speed: :fast, repeat: true)}>
        Animate as <strong>bounce in up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceInUp animate__fast animate__infinite">
          Animate as <strong>bounce in up</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_bounce_in_up(speed: :faster, repeat: true)}>
        Animate as <strong>bounce in up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceInUp animate__faster animate__infinite">
          Animate as <strong>bounce in up</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_bounce_in_up(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__bounceInUp #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a bounce out pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_bounce_out(speed: :normal, repeat: true)}>
        Animate as <strong>bounce out</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceOut animate__infinite">
          Animate as <strong>bounce out</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_bounce_out(speed: :fast, repeat: true)}>
        Animate as <strong>bounce out</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceOut animate__fast animate__infinite">
          Animate as <strong>bounce out</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_bounce_out(speed: :faster, repeat: true)}>
        Animate as <strong>bounce out</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceOut animate__faster animate__infinite">
          Animate as <strong>bounce out</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_bounce_out(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__bounceOut #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a bounce out down pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_bounce_out_down(speed: :normal, repeat: true)}>
        Animate as <strong>bounce out down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceOutDown animate__infinite">
          Animate as <strong>bounce out down</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_bounce_out_down(speed: :fast, repeat: true)}>
        Animate as <strong>bounce out down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceOutDown animate__fast animate__infinite">
          Animate as <strong>bounce out down</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_bounce_out_down(speed: :faster, repeat: true)}>
        Animate as <strong>bounce out down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceOutDown animate__faster animate__infinite">
          Animate as <strong>bounce out down</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_bounce_out_down(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__bounceOutDown #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a bounce out left pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_bounce_out_left(speed: :normal, repeat: true)}>
        Animate as <strong>bounce out left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceOutLeft animate__infinite">
          Animate as <strong>bounce out left</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_bounce_out_left(speed: :fast, repeat: true)}>
        Animate as <strong>bounce out left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceOutLeft animate__fast animate__infinite">
          Animate as <strong>bounce out left</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_bounce_out_left(speed: :faster, repeat: true)}>
        Animate as <strong>bounce out left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceOutLeft animate__faster animate__infinite">
          Animate as <strong>bounce out left</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_bounce_out_left(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__bounceOutLeft #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a bounce out right pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_bounce_out_right(speed: :normal, repeat: true)}>
        Animate as <strong>bounce out right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceOutRight animate__infinite">
          Animate as <strong>bounce out right</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_bounce_out_right(speed: :fast, repeat: true)}>
        Animate as <strong>bounce out right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceOutRight animate__fast animate__infinite">
          Animate as <strong>bounce out right</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_bounce_out_right(speed: :faster, repeat: true)}>
        Animate as <strong>bounce out right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceOutRight animate__faster animate__infinite">
          Animate as <strong>bounce out right</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_bounce_out_right(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__bounceOutRight #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a bounce out up pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_bounce_out_up(speed: :normal, repeat: true)}>
        Animate as <strong>bounce out up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceOutUp animate__infinite">
          Animate as <strong>bounce out up</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_bounce_out_up(speed: :fast, repeat: true)}>
        Animate as <strong>bounce out up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceOutUp animate__fast animate__infinite">
          Animate as <strong>bounce out up</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_bounce_out_up(speed: :faster, repeat: true)}>
        Animate as <strong>bounce out up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__bounceOutUp animate__faster animate__infinite">
          Animate as <strong>bounce out up</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_bounce_out_up(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__bounceOutUp #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade in pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_in(speed: :normal, repeat: true)}>
        Animate as <strong>fade in</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeIn animate__infinite">
          Animate as <strong>fade in</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_in(speed: :fast, repeat: true)}>
        Animate as <strong>fade in</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeIn animate__fast animate__infinite">
          Animate as <strong>fade in</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_in(speed: :faster, repeat: true)}>
        Animate as <strong>fade in</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeIn animate__faster animate__infinite">
          Animate as <strong>fade in</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_in(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeIn #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade in down pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_in_down(speed: :normal, repeat: true)}>
        Animate as <strong>fade in down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInDown animate__infinite">
          Animate as <strong>fade in down</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_in_down(speed: :fast, repeat: true)}>
        Animate as <strong>fade in down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInDown animate__fast animate__infinite">
          Animate as <strong>fade in down</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_in_down(speed: :faster, repeat: true)}>
        Animate as <strong>fade in down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInDown animate__faster animate__infinite">
          Animate as <strong>fade in down</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_in_down(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeInDown #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade in down big pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_in_down_big(speed: :normal, repeat: true)}>
        Animate as <strong>fade in down big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInDownBig animate__infinite">
          Animate as <strong>fade in down big</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_in_down_big(speed: :fast, repeat: true)}>
        Animate as <strong>fade in down big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInDownBig animate__fast animate__infinite">
          Animate as <strong>fade in down big</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_in_down_big(speed: :faster, repeat: true)}>
        Animate as <strong>fade in down big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInDownBig animate__faster animate__infinite">
          Animate as <strong>fade in down big</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_in_down_big(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeInDownBig #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade in left pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_in_left(speed: :normal, repeat: true)}>
        Animate as <strong>fade in left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInLeft animate__infinite">
          Animate as <strong>fade in left</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_in_left(speed: :fast, repeat: true)}>
        Animate as <strong>fade in left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInLeft animate__fast animate__infinite">
          Animate as <strong>fade in left</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_in_left(speed: :faster, repeat: true)}>
        Animate as <strong>fade in left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInLeft animate__faster animate__infinite">
          Animate as <strong>fade in left</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_in_left(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeInLeft #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade in left big pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_in_left_big(speed: :normal, repeat: true)}>
        Animate as <strong>fade in left big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInLeftBig animate__infinite">
          Animate as <strong>fade in left big</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_in_left_big(speed: :fast, repeat: true)}>
        Animate as <strong>fade in left big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInLeftBig animate__fast animate__infinite">
          Animate as <strong>fade in left big</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_in_left_big(speed: :faster, repeat: true)}>
        Animate as <strong>fade in left big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInLeftBig animate__faster animate__infinite">
          Animate as <strong>fade in left big</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_in_left_big(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeInLeftBig #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade in right pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_in_right(speed: :normal, repeat: true)}>
        Animate as <strong>fade in right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInRight animate__infinite">
          Animate as <strong>fade in right</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_in_right(speed: :fast, repeat: true)}>
        Animate as <strong>fade in right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInRight animate__fast animate__infinite">
          Animate as <strong>fade in right</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_in_right(speed: :faster, repeat: true)}>
        Animate as <strong>fade in right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInRight animate__faster animate__infinite">
          Animate as <strong>fade in right</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_in_right(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeInRight #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade in right big pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_in_right_big(speed: :normal, repeat: true)}>
        Animate as <strong>fade in right big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInRightBig animate__infinite">
          Animate as <strong>fade in right big</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_in_right_big(speed: :fast, repeat: true)}>
        Animate as <strong>fade in right big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInRightBig animate__fast animate__infinite">
          Animate as <strong>fade in right big</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_in_right_big(speed: :faster, repeat: true)}>
        Animate as <strong>fade in right big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInRightBig animate__faster animate__infinite">
          Animate as <strong>fade in right big</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_in_right_big(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeInRightBig #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade in up pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_in_up(speed: :normal, repeat: true)}>
        Animate as <strong>fade in up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInUp animate__infinite">
          Animate as <strong>fade in up</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_in_up(speed: :fast, repeat: true)}>
        Animate as <strong>fade in up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInUp animate__fast animate__infinite">
          Animate as <strong>fade in up</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_in_up(speed: :faster, repeat: true)}>
        Animate as <strong>fade in up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInUp animate__faster animate__infinite">
          Animate as <strong>fade in up</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_in_up(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeInUp #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade in up big pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_in_up_big(speed: :normal, repeat: true)}>
        Animate as <strong>fade in up big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInUpBig animate__infinite">
          Animate as <strong>fade in up big</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_in_up_big(speed: :fast, repeat: true)}>
        Animate as <strong>fade in up big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInUpBig animate__fast animate__infinite">
          Animate as <strong>fade in up big</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_in_up_big(speed: :faster, repeat: true)}>
        Animate as <strong>fade in up big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInUpBig animate__faster animate__infinite">
          Animate as <strong>fade in up big</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_in_up_big(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeInUpBig #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade in top left pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_in_top_left(speed: :normal, repeat: true)}>
        Animate as <strong>fade in top left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInTopLeft animate__infinite">
          Animate as <strong>fade in top left</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_in_top_left(speed: :fast, repeat: true)}>
        Animate as <strong>fade in top left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInTopLeft animate__fast animate__infinite">
          Animate as <strong>fade in top left</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_in_top_left(speed: :faster, repeat: true)}>
        Animate as <strong>fade in top left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInTopLeft animate__faster animate__infinite">
          Animate as <strong>fade in top left</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_in_top_left(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeInTopLeft #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade in top right pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_in_top_right(speed: :normal, repeat: true)}>
        Animate as <strong>fade in top right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInTopRight animate__infinite">
          Animate as <strong>fade in top right</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_in_top_right(speed: :fast, repeat: true)}>
        Animate as <strong>fade in top right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInTopRight animate__fast animate__infinite">
          Animate as <strong>fade in top right</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_in_top_right(speed: :faster, repeat: true)}>
        Animate as <strong>fade in top right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInTopRight animate__faster animate__infinite">
          Animate as <strong>fade in top right</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_in_top_right(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeInTopRight #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade in bottom left pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_in_bottom_left(speed: :normal, repeat: true)}>
        Animate as <strong>fade in bottom left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInBottomLeft animate__infinite">
          Animate as <strong>fade in bottom left</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_in_bottom_left(speed: :fast, repeat: true)}>
        Animate as <strong>fade in bottom left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInBottomLeft animate__fast animate__infinite">
          Animate as <strong>fade in bottom left</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_in_bottom_left(speed: :faster, repeat: true)}>
        Animate as <strong>fade in bottom left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInBottomLeft animate__faster animate__infinite">
          Animate as <strong>fade in bottom left</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_in_bottom_left(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeInBottomLeft #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade in bottom right pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_in_bottom_right(speed: :normal, repeat: true)}>
        Animate as <strong>fade in bottom right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInBottomRight animate__infinite">
          Animate as <strong>fade in bottom right</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_in_bottom_right(speed: :fast, repeat: true)}>
        Animate as <strong>fade in bottom right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInBottomRight animate__fast animate__infinite">
          Animate as <strong>fade in bottom right</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_in_bottom_right(speed: :faster, repeat: true)}>
        Animate as <strong>fade in bottom right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeInBottomRight animate__faster animate__infinite">
          Animate as <strong>fade in bottom right</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_in_bottom_right(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeInBottomRight #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade out pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_out(speed: :normal, repeat: true)}>
        Animate as <strong>fade out</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOut animate__infinite">
          Animate as <strong>fade out</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_out(speed: :fast, repeat: true)}>
        Animate as <strong>fade out</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOut animate__fast animate__infinite">
          Animate as <strong>fade out</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_out(speed: :faster, repeat: true)}>
        Animate as <strong>fade out</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOut animate__faster animate__infinite">
          Animate as <strong>fade out</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_out(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeOut #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade out down pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_out_down(speed: :normal, repeat: true)}>
        Animate as <strong>fade out down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutDown animate__infinite">
          Animate as <strong>fade out down</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_out_down(speed: :fast, repeat: true)}>
        Animate as <strong>fade out down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutDown animate__fast animate__infinite">
          Animate as <strong>fade out down</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_out_down(speed: :faster, repeat: true)}>
        Animate as <strong>fade out down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutDown animate__faster animate__infinite">
          Animate as <strong>fade out down</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_out_down(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeOutDown #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade out down big pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_out_down_big(speed: :normal, repeat: true)}>
        Animate as <strong>fade out down big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutDownBig animate__infinite">
          Animate as <strong>fade out down big</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_out_down_big(speed: :fast, repeat: true)}>
        Animate as <strong>fade out down big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutDownBig animate__fast animate__infinite">
          Animate as <strong>fade out down big</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_out_down_big(speed: :faster, repeat: true)}>
        Animate as <strong>fade out down big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutDownBig animate__faster animate__infinite">
          Animate as <strong>fade out down big</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_out_down_big(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeOutDownBig #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade out left pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_out_left(speed: :normal, repeat: true)}>
        Animate as <strong>fade out left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutLeft animate__infinite">
          Animate as <strong>fade out left</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_out_left(speed: :fast, repeat: true)}>
        Animate as <strong>fade out left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutLeft animate__fast animate__infinite">
          Animate as <strong>fade out left</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_out_left(speed: :faster, repeat: true)}>
        Animate as <strong>fade out left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutLeft animate__faster animate__infinite">
          Animate as <strong>fade out left</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_out_left(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeOutLeft #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade out left big pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_out_left_big(speed: :normal, repeat: true)}>
        Animate as <strong>fade out left big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutLeftBig animate__infinite">
          Animate as <strong>fade out left big</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_out_left_big(speed: :fast, repeat: true)}>
        Animate as <strong>fade out left big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutLeftBig animate__fast animate__infinite">
          Animate as <strong>fade out left big</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_out_left_big(speed: :faster, repeat: true)}>
        Animate as <strong>fade out left big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutLeftBig animate__faster animate__infinite">
          Animate as <strong>fade out left big</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_out_left_big(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeOutLeftBig #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade out right pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_out_right(speed: :normal, repeat: true)}>
        Animate as <strong>fade out right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutRight animate__infinite">
          Animate as <strong>fade out right</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_out_right(speed: :fast, repeat: true)}>
        Animate as <strong>fade out right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutRight animate__fast animate__infinite">
          Animate as <strong>fade out right</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_out_right(speed: :faster, repeat: true)}>
        Animate as <strong>fade out right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutRight animate__faster animate__infinite">
          Animate as <strong>fade out right</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_out_right(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeOutRight #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade out right big pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_out_right_big(speed: :normal, repeat: true)}>
        Animate as <strong>fade out right big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutRightBig animate__infinite">
          Animate as <strong>fade out right big</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_out_right_big(speed: :fast, repeat: true)}>
        Animate as <strong>fade out right big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutRightBig animate__fast animate__infinite">
          Animate as <strong>fade out right big</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_out_right_big(speed: :faster, repeat: true)}>
        Animate as <strong>fade out right big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutRightBig animate__faster animate__infinite">
          Animate as <strong>fade out right big</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_out_right_big(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeOutRightBig #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade out up pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_out_up(speed: :normal, repeat: true)}>
        Animate as <strong>fade out up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutUp animate__infinite">
          Animate as <strong>fade out up</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_out_up(speed: :fast, repeat: true)}>
        Animate as <strong>fade out up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutUp animate__fast animate__infinite">
          Animate as <strong>fade out up</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_out_up(speed: :faster, repeat: true)}>
        Animate as <strong>fade out up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutUp animate__faster animate__infinite">
          Animate as <strong>fade out up</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_out_up(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeOutUp #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade out up big pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_out_up_big(speed: :normal, repeat: true)}>
        Animate as <strong>fade out up big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutUpBig animate__infinite">
          Animate as <strong>fade out up big</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_out_up_big(speed: :fast, repeat: true)}>
        Animate as <strong>fade out up big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutUpBig animate__fast animate__infinite">
          Animate as <strong>fade out up big</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_out_up_big(speed: :faster, repeat: true)}>
        Animate as <strong>fade out up big</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutUpBig animate__faster animate__infinite">
          Animate as <strong>fade out up big</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_out_up_big(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeOutUpBig #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade out top left pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_out_top_left(speed: :normal, repeat: true)}>
        Animate as <strong>fade out top left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutTopLeft animate__infinite">
          Animate as <strong>fade out top left</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_out_top_left(speed: :fast, repeat: true)}>
        Animate as <strong>fade out top left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutTopLeft animate__fast animate__infinite">
          Animate as <strong>fade out top left</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_out_top_left(speed: :faster, repeat: true)}>
        Animate as <strong>fade out top left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutTopLeft animate__faster animate__infinite">
          Animate as <strong>fade out top left</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_out_top_left(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeOutTopLeft #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade out top right pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_out_top_right(speed: :normal, repeat: true)}>
        Animate as <strong>fade out top right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutTopRight animate__infinite">
          Animate as <strong>fade out top right</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_out_top_right(speed: :fast, repeat: true)}>
        Animate as <strong>fade out top right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutTopRight animate__fast animate__infinite">
          Animate as <strong>fade out top right</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_out_top_right(speed: :faster, repeat: true)}>
        Animate as <strong>fade out top right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutTopRight animate__faster animate__infinite">
          Animate as <strong>fade out top right</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_out_top_right(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeOutTopRight #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade out bottom right pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_out_bottom_right(speed: :normal, repeat: true)}>
        Animate as <strong>fade out bottom right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutBottomRight animate__infinite">
          Animate as <strong>fade out bottom right</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_out_bottom_right(speed: :fast, repeat: true)}>
        Animate as <strong>fade out bottom right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutBottomRight animate__fast animate__infinite">
          Animate as <strong>fade out bottom right</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_out_bottom_right(speed: :faster, repeat: true)}>
        Animate as <strong>fade out bottom right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutBottomRight animate__faster animate__infinite">
          Animate as <strong>fade out bottom right</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_out_bottom_right(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeOutBottomRight #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a fade out bottom left pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_fade_out_bottom_left(speed: :normal, repeat: true)}>
        Animate as <strong>fade out bottom left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutBottomLeft animate__infinite">
          Animate as <strong>fade out bottom left</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_fade_out_bottom_left(speed: :fast, repeat: true)}>
        Animate as <strong>fade out bottom left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutBottomLeft animate__fast animate__infinite">
          Animate as <strong>fade out bottom left</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_fade_out_bottom_left(speed: :faster, repeat: true)}>
        Animate as <strong>fade out bottom left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__fadeOutBottomLeft animate__faster animate__infinite">
          Animate as <strong>fade out bottom left</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_fade_out_bottom_left(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__fadeOutBottomLeft #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a flip pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_flip(speed: :normal, repeat: true)}>
        Animate as <strong>flip</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__flip animate__infinite">
          Animate as <strong>flip</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_flip(speed: :fast, repeat: true)}>
        Animate as <strong>flip</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__flip animate__fast animate__infinite">
          Animate as <strong>flip</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_flip(speed: :faster, repeat: true)}>
        Animate as <strong>flip</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__flip animate__faster animate__infinite">
          Animate as <strong>flip</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_flip(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__flip #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a flip in x pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_flip_in_x(speed: :normal, repeat: true)}>
        Animate as <strong>flip in x</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__flipInX animate__infinite">
          Animate as <strong>flip in x</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_flip_in_x(speed: :fast, repeat: true)}>
        Animate as <strong>flip in x</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__flipInX animate__fast animate__infinite">
          Animate as <strong>flip in x</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_flip_in_x(speed: :faster, repeat: true)}>
        Animate as <strong>flip in x</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__flipInX animate__faster animate__infinite">
          Animate as <strong>flip in x</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_flip_in_x(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__flipInX #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a flip in y pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_flip_in_y(speed: :normal, repeat: true)}>
        Animate as <strong>flip in y</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__flipInY animate__infinite">
          Animate as <strong>flip in y</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_flip_in_y(speed: :fast, repeat: true)}>
        Animate as <strong>flip in y</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__flipInY animate__fast animate__infinite">
          Animate as <strong>flip in y</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_flip_in_y(speed: :faster, repeat: true)}>
        Animate as <strong>flip in y</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__flipInY animate__faster animate__infinite">
          Animate as <strong>flip in y</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_flip_in_y(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__flipInY #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a flip out x pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_flip_out_x(speed: :normal, repeat: true)}>
        Animate as <strong>flip out x</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__flipOutX animate__infinite">
          Animate as <strong>flip out x</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_flip_out_x(speed: :fast, repeat: true)}>
        Animate as <strong>flip out x</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__flipOutX animate__fast animate__infinite">
          Animate as <strong>flip out x</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_flip_out_x(speed: :faster, repeat: true)}>
        Animate as <strong>flip out x</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__flipOutX animate__faster animate__infinite">
          Animate as <strong>flip out x</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_flip_out_x(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__flipOutX #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a flip out y pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_flip_out_y(speed: :normal, repeat: true)}>
        Animate as <strong>flip out y</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__flipOutY animate__infinite">
          Animate as <strong>flip out y</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_flip_out_y(speed: :fast, repeat: true)}>
        Animate as <strong>flip out y</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__flipOutY animate__fast animate__infinite">
          Animate as <strong>flip out y</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_flip_out_y(speed: :faster, repeat: true)}>
        Animate as <strong>flip out y</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__flipOutY animate__faster animate__infinite">
          Animate as <strong>flip out y</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_flip_out_y(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__flipOutY #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a light speed in right pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_light_speed_in_right(speed: :normal, repeat: true)}>
        Animate as <strong>light speed in right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__lightSpeedInRight animate__infinite">
          Animate as <strong>light speed in right</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_light_speed_in_right(speed: :fast, repeat: true)}>
        Animate as <strong>light speed in right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__lightSpeedInRight animate__fast animate__infinite">
          Animate as <strong>light speed in right</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_light_speed_in_right(speed: :faster, repeat: true)}>
        Animate as <strong>light speed in right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__lightSpeedInRight animate__faster animate__infinite">
          Animate as <strong>light speed in right</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_light_speed_in_right(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__lightSpeedInRight #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a light speed in left pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_light_speed_in_left(speed: :normal, repeat: true)}>
        Animate as <strong>light speed in left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__lightSpeedInLeft animate__infinite">
          Animate as <strong>light speed in left</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_light_speed_in_left(speed: :fast, repeat: true)}>
        Animate as <strong>light speed in left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__lightSpeedInLeft animate__fast animate__infinite">
          Animate as <strong>light speed in left</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_light_speed_in_left(speed: :faster, repeat: true)}>
        Animate as <strong>light speed in left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__lightSpeedInLeft animate__faster animate__infinite">
          Animate as <strong>light speed in left</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_light_speed_in_left(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__lightSpeedInLeft #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a light speed out right pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_light_speed_out_right(speed: :normal, repeat: true)}>
        Animate as <strong>light speed out right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__lightSpeedOutRight animate__infinite">
          Animate as <strong>light speed out right</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_light_speed_out_right(speed: :fast, repeat: true)}>
        Animate as <strong>light speed out right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__lightSpeedOutRight animate__fast animate__infinite">
          Animate as <strong>light speed out right</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_light_speed_out_right(speed: :faster, repeat: true)}>
        Animate as <strong>light speed out right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__lightSpeedOutRight animate__faster animate__infinite">
          Animate as <strong>light speed out right</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_light_speed_out_right(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__lightSpeedOutRight #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a light speed out left pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_light_speed_out_left(speed: :normal, repeat: true)}>
        Animate as <strong>light speed out left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__lightSpeedOutLeft animate__infinite">
          Animate as <strong>light speed out left</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_light_speed_out_left(speed: :fast, repeat: true)}>
        Animate as <strong>light speed out left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__lightSpeedOutLeft animate__fast animate__infinite">
          Animate as <strong>light speed out left</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_light_speed_out_left(speed: :faster, repeat: true)}>
        Animate as <strong>light speed out left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__lightSpeedOutLeft animate__faster animate__infinite">
          Animate as <strong>light speed out left</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_light_speed_out_left(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__lightSpeedOutLeft #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a rotate in pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_rotate_in(speed: :normal, repeat: true)}>
        Animate as <strong>rotate in</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateIn animate__infinite">
          Animate as <strong>rotate in</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_rotate_in(speed: :fast, repeat: true)}>
        Animate as <strong>rotate in</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateIn animate__fast animate__infinite">
          Animate as <strong>rotate in</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_rotate_in(speed: :faster, repeat: true)}>
        Animate as <strong>rotate in</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateIn animate__faster animate__infinite">
          Animate as <strong>rotate in</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_rotate_in(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__rotateIn #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a rotate in down left pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_rotate_in_down_left(speed: :normal, repeat: true)}>
        Animate as <strong>rotate in down left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateInDownLeft animate__infinite">
          Animate as <strong>rotate in down left</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_rotate_in_down_left(speed: :fast, repeat: true)}>
        Animate as <strong>rotate in down left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateInDownLeft animate__fast animate__infinite">
          Animate as <strong>rotate in down left</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_rotate_in_down_left(speed: :faster, repeat: true)}>
        Animate as <strong>rotate in down left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateInDownLeft animate__faster animate__infinite">
          Animate as <strong>rotate in down left</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_rotate_in_down_left(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__rotateInDownLeft #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a rotate in down right pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_rotate_in_down_right(speed: :normal, repeat: true)}>
        Animate as <strong>rotate in down right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateInDownRight animate__infinite">
          Animate as <strong>rotate in down right</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_rotate_in_down_right(speed: :fast, repeat: true)}>
        Animate as <strong>rotate in down right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateInDownRight animate__fast animate__infinite">
          Animate as <strong>rotate in down right</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_rotate_in_down_right(speed: :faster, repeat: true)}>
        Animate as <strong>rotate in down right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateInDownRight animate__faster animate__infinite">
          Animate as <strong>rotate in down right</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_rotate_in_down_right(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__rotateInDownRight #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a rotate in up left pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_rotate_in_up_left(speed: :normal, repeat: true)}>
        Animate as <strong>rotate in up left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateInUpLeft animate__infinite">
          Animate as <strong>rotate in up left</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_rotate_in_up_left(speed: :fast, repeat: true)}>
        Animate as <strong>rotate in up left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateInUpLeft animate__fast animate__infinite">
          Animate as <strong>rotate in up left</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_rotate_in_up_left(speed: :faster, repeat: true)}>
        Animate as <strong>rotate in up left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateInUpLeft animate__faster animate__infinite">
          Animate as <strong>rotate in up left</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_rotate_in_up_left(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__rotateInUpLeft #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a rotate in up right pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_rotate_in_up_right(speed: :normal, repeat: true)}>
        Animate as <strong>rotate in up right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateInUpRight animate__infinite">
          Animate as <strong>rotate in up right</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_rotate_in_up_right(speed: :fast, repeat: true)}>
        Animate as <strong>rotate in up right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateInUpRight animate__fast animate__infinite">
          Animate as <strong>rotate in up right</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_rotate_in_up_right(speed: :faster, repeat: true)}>
        Animate as <strong>rotate in up right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateInUpRight animate__faster animate__infinite">
          Animate as <strong>rotate in up right</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_rotate_in_up_right(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__rotateInUpRight #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a rotate out pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_rotate_out(speed: :normal, repeat: true)}>
        Animate as <strong>rotate out</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateOut animate__infinite">
          Animate as <strong>rotate out</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_rotate_out(speed: :fast, repeat: true)}>
        Animate as <strong>rotate out</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateOut animate__fast animate__infinite">
          Animate as <strong>rotate out</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_rotate_out(speed: :faster, repeat: true)}>
        Animate as <strong>rotate out</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateOut animate__faster animate__infinite">
          Animate as <strong>rotate out</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_rotate_out(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__rotateOut #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a rotate out down left pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_rotate_out_down_left(speed: :normal, repeat: true)}>
        Animate as <strong>rotate out down left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateOutDownLeft animate__infinite">
          Animate as <strong>rotate out down left</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_rotate_out_down_left(speed: :fast, repeat: true)}>
        Animate as <strong>rotate out down left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateOutDownLeft animate__fast animate__infinite">
          Animate as <strong>rotate out down left</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_rotate_out_down_left(speed: :faster, repeat: true)}>
        Animate as <strong>rotate out down left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateOutDownLeft animate__faster animate__infinite">
          Animate as <strong>rotate out down left</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_rotate_out_down_left(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__rotateOutDownLeft #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a rotate out down right pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_rotate_out_down_right(speed: :normal, repeat: true)}>
        Animate as <strong>rotate out down right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateOutDownRight animate__infinite">
          Animate as <strong>rotate out down right</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_rotate_out_down_right(speed: :fast, repeat: true)}>
        Animate as <strong>rotate out down right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateOutDownRight animate__fast animate__infinite">
          Animate as <strong>rotate out down right</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_rotate_out_down_right(speed: :faster, repeat: true)}>
        Animate as <strong>rotate out down right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateOutDownRight animate__faster animate__infinite">
          Animate as <strong>rotate out down right</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_rotate_out_down_right(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__rotateOutDownRight #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a rotate out up left pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_rotate_out_up_left(speed: :normal, repeat: true)}>
        Animate as <strong>rotate out up left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateOutUpLeft animate__infinite">
          Animate as <strong>rotate out up left</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_rotate_out_up_left(speed: :fast, repeat: true)}>
        Animate as <strong>rotate out up left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateOutUpLeft animate__fast animate__infinite">
          Animate as <strong>rotate out up left</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_rotate_out_up_left(speed: :faster, repeat: true)}>
        Animate as <strong>rotate out up left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateOutUpLeft animate__faster animate__infinite">
          Animate as <strong>rotate out up left</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_rotate_out_up_left(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__rotateOutUpLeft #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a rotate out up right pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_rotate_out_up_right(speed: :normal, repeat: true)}>
        Animate as <strong>rotate out up right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateOutUpRight animate__infinite">
          Animate as <strong>rotate out up right</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_rotate_out_up_right(speed: :fast, repeat: true)}>
        Animate as <strong>rotate out up right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateOutUpRight animate__fast animate__infinite">
          Animate as <strong>rotate out up right</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_rotate_out_up_right(speed: :faster, repeat: true)}>
        Animate as <strong>rotate out up right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rotateOutUpRight animate__faster animate__infinite">
          Animate as <strong>rotate out up right</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_rotate_out_up_right(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__rotateOutUpRight #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a hinge pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_hinge(speed: :normal, repeat: true)}>
        Animate as <strong>hinge</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__hinge animate__infinite">
          Animate as <strong>hinge</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_hinge(speed: :fast, repeat: true)}>
        Animate as <strong>hinge</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__hinge animate__fast animate__infinite">
          Animate as <strong>hinge</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_hinge(speed: :faster, repeat: true)}>
        Animate as <strong>hinge</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__hinge animate__faster animate__infinite">
          Animate as <strong>hinge</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_hinge(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__hinge #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a jack in the box pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_jack_in_the_box(speed: :normal, repeat: true)}>
        Animate as <strong>jack in the box</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__jackInTheBox animate__infinite">
          Animate as <strong>jack in the box</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_jack_in_the_box(speed: :fast, repeat: true)}>
        Animate as <strong>jack in the box</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__jackInTheBox animate__fast animate__infinite">
          Animate as <strong>jack in the box</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_jack_in_the_box(speed: :faster, repeat: true)}>
        Animate as <strong>jack in the box</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__jackInTheBox animate__faster animate__infinite">
          Animate as <strong>jack in the box</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_jack_in_the_box(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__jackInTheBox #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a roll in pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_roll_in(speed: :normal, repeat: true)}>
        Animate as <strong>roll in</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rollIn animate__infinite">
          Animate as <strong>roll in</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_roll_in(speed: :fast, repeat: true)}>
        Animate as <strong>roll in</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rollIn animate__fast animate__infinite">
          Animate as <strong>roll in</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_roll_in(speed: :faster, repeat: true)}>
        Animate as <strong>roll in</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rollIn animate__faster animate__infinite">
          Animate as <strong>roll in</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_roll_in(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__rollIn #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a roll out pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_roll_out(speed: :normal, repeat: true)}>
        Animate as <strong>roll out</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rollOut animate__infinite">
          Animate as <strong>roll out</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_roll_out(speed: :fast, repeat: true)}>
        Animate as <strong>roll out</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rollOut animate__fast animate__infinite">
          Animate as <strong>roll out</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_roll_out(speed: :faster, repeat: true)}>
        Animate as <strong>roll out</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__rollOut animate__faster animate__infinite">
          Animate as <strong>roll out</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_roll_out(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__rollOut #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a zoom in pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_zoom_in(speed: :normal, repeat: true)}>
        Animate as <strong>zoom in</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomIn animate__infinite">
          Animate as <strong>zoom in</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_zoom_in(speed: :fast, repeat: true)}>
        Animate as <strong>zoom in</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomIn animate__fast animate__infinite">
          Animate as <strong>zoom in</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_zoom_in(speed: :faster, repeat: true)}>
        Animate as <strong>zoom in</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomIn animate__faster animate__infinite">
          Animate as <strong>zoom in</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_zoom_in(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__zoomIn #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a zoom in down pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_zoom_in_down(speed: :normal, repeat: true)}>
        Animate as <strong>zoom in down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomInDown animate__infinite">
          Animate as <strong>zoom in down</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_zoom_in_down(speed: :fast, repeat: true)}>
        Animate as <strong>zoom in down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomInDown animate__fast animate__infinite">
          Animate as <strong>zoom in down</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_zoom_in_down(speed: :faster, repeat: true)}>
        Animate as <strong>zoom in down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomInDown animate__faster animate__infinite">
          Animate as <strong>zoom in down</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_zoom_in_down(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__zoomInDown #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a zoom in left pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_zoom_in_left(speed: :normal, repeat: true)}>
        Animate as <strong>zoom in left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomInLeft animate__infinite">
          Animate as <strong>zoom in left</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_zoom_in_left(speed: :fast, repeat: true)}>
        Animate as <strong>zoom in left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomInLeft animate__fast animate__infinite">
          Animate as <strong>zoom in left</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_zoom_in_left(speed: :faster, repeat: true)}>
        Animate as <strong>zoom in left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomInLeft animate__faster animate__infinite">
          Animate as <strong>zoom in left</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_zoom_in_left(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__zoomInLeft #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a zoom in right pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_zoom_in_right(speed: :normal, repeat: true)}>
        Animate as <strong>zoom in right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomInRight animate__infinite">
          Animate as <strong>zoom in right</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_zoom_in_right(speed: :fast, repeat: true)}>
        Animate as <strong>zoom in right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomInRight animate__fast animate__infinite">
          Animate as <strong>zoom in right</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_zoom_in_right(speed: :faster, repeat: true)}>
        Animate as <strong>zoom in right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomInRight animate__faster animate__infinite">
          Animate as <strong>zoom in right</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_zoom_in_right(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__zoomInRight #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a zoom in up pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_zoom_in_up(speed: :normal, repeat: true)}>
        Animate as <strong>zoom in up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomInUp animate__infinite">
          Animate as <strong>zoom in up</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_zoom_in_up(speed: :fast, repeat: true)}>
        Animate as <strong>zoom in up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomInUp animate__fast animate__infinite">
          Animate as <strong>zoom in up</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_zoom_in_up(speed: :faster, repeat: true)}>
        Animate as <strong>zoom in up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomInUp animate__faster animate__infinite">
          Animate as <strong>zoom in up</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_zoom_in_up(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__zoomInUp #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a zoom out pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_zoom_out(speed: :normal, repeat: true)}>
        Animate as <strong>zoom out</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomOut animate__infinite">
          Animate as <strong>zoom out</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_zoom_out(speed: :fast, repeat: true)}>
        Animate as <strong>zoom out</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomOut animate__fast animate__infinite">
          Animate as <strong>zoom out</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_zoom_out(speed: :faster, repeat: true)}>
        Animate as <strong>zoom out</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomOut animate__faster animate__infinite">
          Animate as <strong>zoom out</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_zoom_out(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__zoomOut #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a zoom out down pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_zoom_out_down(speed: :normal, repeat: true)}>
        Animate as <strong>zoom out down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomOutDown animate__infinite">
          Animate as <strong>zoom out down</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_zoom_out_down(speed: :fast, repeat: true)}>
        Animate as <strong>zoom out down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomOutDown animate__fast animate__infinite">
          Animate as <strong>zoom out down</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_zoom_out_down(speed: :faster, repeat: true)}>
        Animate as <strong>zoom out down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomOutDown animate__faster animate__infinite">
          Animate as <strong>zoom out down</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_zoom_out_down(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__zoomOutDown #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a zoom out left pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_zoom_out_left(speed: :normal, repeat: true)}>
        Animate as <strong>zoom out left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomOutLeft animate__infinite">
          Animate as <strong>zoom out left</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_zoom_out_left(speed: :fast, repeat: true)}>
        Animate as <strong>zoom out left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomOutLeft animate__fast animate__infinite">
          Animate as <strong>zoom out left</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_zoom_out_left(speed: :faster, repeat: true)}>
        Animate as <strong>zoom out left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomOutLeft animate__faster animate__infinite">
          Animate as <strong>zoom out left</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_zoom_out_left(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__zoomOutLeft #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a zoom out right pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_zoom_out_right(speed: :normal, repeat: true)}>
        Animate as <strong>zoom out right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomOutRight animate__infinite">
          Animate as <strong>zoom out right</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_zoom_out_right(speed: :fast, repeat: true)}>
        Animate as <strong>zoom out right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomOutRight animate__fast animate__infinite">
          Animate as <strong>zoom out right</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_zoom_out_right(speed: :faster, repeat: true)}>
        Animate as <strong>zoom out right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomOutRight animate__faster animate__infinite">
          Animate as <strong>zoom out right</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_zoom_out_right(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__zoomOutRight #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a zoom out up pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_zoom_out_up(speed: :normal, repeat: true)}>
        Animate as <strong>zoom out up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomOutUp animate__infinite">
          Animate as <strong>zoom out up</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_zoom_out_up(speed: :fast, repeat: true)}>
        Animate as <strong>zoom out up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomOutUp animate__fast animate__infinite">
          Animate as <strong>zoom out up</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_zoom_out_up(speed: :faster, repeat: true)}>
        Animate as <strong>zoom out up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__zoomOutUp animate__faster animate__infinite">
          Animate as <strong>zoom out up</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_zoom_out_up(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__zoomOutUp #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a slide in down pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_slide_in_down(speed: :normal, repeat: true)}>
        Animate as <strong>slide in down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideInDown animate__infinite">
          Animate as <strong>slide in down</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_slide_in_down(speed: :fast, repeat: true)}>
        Animate as <strong>slide in down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideInDown animate__fast animate__infinite">
          Animate as <strong>slide in down</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_slide_in_down(speed: :faster, repeat: true)}>
        Animate as <strong>slide in down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideInDown animate__faster animate__infinite">
          Animate as <strong>slide in down</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_slide_in_down(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__slideInDown #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a slide in left pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_slide_in_left(speed: :normal, repeat: true)}>
        Animate as <strong>slide in left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideInLeft animate__infinite">
          Animate as <strong>slide in left</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_slide_in_left(speed: :fast, repeat: true)}>
        Animate as <strong>slide in left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideInLeft animate__fast animate__infinite">
          Animate as <strong>slide in left</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_slide_in_left(speed: :faster, repeat: true)}>
        Animate as <strong>slide in left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideInLeft animate__faster animate__infinite">
          Animate as <strong>slide in left</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_slide_in_left(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__slideInLeft #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a slide in right pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_slide_in_right(speed: :normal, repeat: true)}>
        Animate as <strong>slide in right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideInRight animate__infinite">
          Animate as <strong>slide in right</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_slide_in_right(speed: :fast, repeat: true)}>
        Animate as <strong>slide in right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideInRight animate__fast animate__infinite">
          Animate as <strong>slide in right</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_slide_in_right(speed: :faster, repeat: true)}>
        Animate as <strong>slide in right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideInRight animate__faster animate__infinite">
          Animate as <strong>slide in right</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_slide_in_right(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__slideInRight #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a slide in up pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_slide_in_up(speed: :normal, repeat: true)}>
        Animate as <strong>slide in up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideInUp animate__infinite">
          Animate as <strong>slide in up</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_slide_in_up(speed: :fast, repeat: true)}>
        Animate as <strong>slide in up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideInUp animate__fast animate__infinite">
          Animate as <strong>slide in up</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_slide_in_up(speed: :faster, repeat: true)}>
        Animate as <strong>slide in up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideInUp animate__faster animate__infinite">
          Animate as <strong>slide in up</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_slide_in_up(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__slideInUp #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a slide out down pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_slide_out_down(speed: :normal, repeat: true)}>
        Animate as <strong>slide out down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideOutDown animate__infinite">
          Animate as <strong>slide out down</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_slide_out_down(speed: :fast, repeat: true)}>
        Animate as <strong>slide out down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideOutDown animate__fast animate__infinite">
          Animate as <strong>slide out down</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_slide_out_down(speed: :faster, repeat: true)}>
        Animate as <strong>slide out down</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideOutDown animate__faster animate__infinite">
          Animate as <strong>slide out down</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_slide_out_down(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__slideOutDown #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a slide out left pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_slide_out_left(speed: :normal, repeat: true)}>
        Animate as <strong>slide out left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideOutLeft animate__infinite">
          Animate as <strong>slide out left</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_slide_out_left(speed: :fast, repeat: true)}>
        Animate as <strong>slide out left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideOutLeft animate__fast animate__infinite">
          Animate as <strong>slide out left</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_slide_out_left(speed: :faster, repeat: true)}>
        Animate as <strong>slide out left</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideOutLeft animate__faster animate__infinite">
          Animate as <strong>slide out left</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_slide_out_left(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__slideOutLeft #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a slide out right pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_slide_out_right(speed: :normal, repeat: true)}>
        Animate as <strong>slide out right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideOutRight animate__infinite">
          Animate as <strong>slide out right</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_slide_out_right(speed: :fast, repeat: true)}>
        Animate as <strong>slide out right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideOutRight animate__fast animate__infinite">
          Animate as <strong>slide out right</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_slide_out_right(speed: :faster, repeat: true)}>
        Animate as <strong>slide out right</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideOutRight animate__faster animate__infinite">
          Animate as <strong>slide out right</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_slide_out_right(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__slideOutRight #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      @doc """
      Animate with a slide out up pattern.
      This function is not a component.
      It is a function meant to return a list of CSS classes.

      Options:

        * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
        * `:repeat` (default: `false`) - whether the animation repeats itself.

      You can see the resulting animation in the examples below.

      <!-- tabs-open -->

      ### Normal speed

      ```heex
      <p class={animate_slide_out_up(speed: :normal, repeat: true)}>
        Animate as <strong>slide out up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideOutUp animate__infinite">
          Animate as <strong>slide out up</strong>
        </p>
      </blockquote>

      ### Fast speed

      ```heex
      <p class={animate_slide_out_up(speed: :fast, repeat: true)}>
        Animate as <strong>slide out up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideOutUp animate__fast animate__infinite">
          Animate as <strong>slide out up</strong>
        </p>
      </blockquote>

      ### Faster speed (default)

      ```heex
      <p class={animate_slide_out_up(speed: :faster, repeat: true)}>
        Animate as <strong>slide out up</strong>
      </p>
      ```

      The code above results in the following animation.
      This animation is played on repeat in order to better showcase the movements,
      but most of the time you'll probably prefer an animation that does not repeat.

      <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
        <h4 class="neutral">Animation:</h4>
        <p class="animate__animated animate__slideOutUp animate__faster animate__infinite">
          Animate as <strong>slide out up</strong>
        </p>
      </blockquote>

      <!-- tabs-close -->
      """
      def animate_slide_out_up(opts \\ []) do
        unquote_splicing(maybe_raise_not_implemented)
        speed = Keyword.get(opts, :speed, :faster)
        repeat = Keyword.get(opts, :repeat, false)
        "animate__animated animate__slideOutUp #{speed_to_css_class(speed)} #{repeat_to_css_class(repeat)}"
      end

      # END:BS5-ANIMATIONS
    end
  end
end
