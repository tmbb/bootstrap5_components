defmodule Bootstrap5Components.GenerateAnimations do
  @js_classes """
  # Attention seekers
  bounce
  flash
  pulse
  rubberBand
  shakeX
  shakeY
  headShake
  swing
  tada
  wobble
  jello
  heartBeat
  # Back entrances
  backInDown
  backInLeft
  backInRight
  backInUp
  # Back exits
  backOutDown
  backOutLeft
  backOutRight
  backOutUp
  # Bouncing entrances
  bounceIn
  bounceInDown
  bounceInLeft
  bounceInRight
  bounceInUp
  # Bouncing exits
  bounceOut
  bounceOutDown
  bounceOutLeft
  bounceOutRight
  bounceOutUp
  # Fading entrances
  fadeIn
  fadeInDown
  fadeInDownBig
  fadeInLeft
  fadeInLeftBig
  fadeInRight
  fadeInRightBig
  fadeInUp
  fadeInUpBig
  fadeInTopLeft
  fadeInTopRight
  fadeInBottomLeft
  fadeInBottomRight
  # Fading exits
  fadeOut
  fadeOutDown
  fadeOutDownBig
  fadeOutLeft
  fadeOutLeftBig
  fadeOutRight
  fadeOutRightBig
  fadeOutUp
  fadeOutUpBig
  fadeOutTopLeft
  fadeOutTopRight
  fadeOutBottomRight
  fadeOutBottomLeft
  # Flippers
  flip
  flipInX
  flipInY
  flipOutX
  flipOutY
  # Light Speed
  lightSpeedInRight
  lightSpeedInLeft
  lightSpeedOutRight
  lightSpeedOutLeft
  # Rotating entrances
  rotateIn
  rotateInDownLeft
  rotateInDownRight
  rotateInUpLeft
  rotateInUpRight
  # Rotating exits
  rotateOut
  rotateOutDownLeft
  rotateOutDownRight
  rotateOutUpLeft
  rotateOutUpRight
  # Specials
  hinge
  jackInTheBox
  rollIn
  rollOut
  # Zooming entrances
  zoomIn
  zoomInDown
  zoomInLeft
  zoomInRight
  zoomInUp
  # Zooming exits
  zoomOut
  zoomOutDown
  zoomOutLeft
  zoomOutRight
  zoomOutUp
  # Sliding entrances
  slideInDown
  slideInLeft
  slideInRight
  slideInUp
  # Sliding exits
  slideOutDown
  slideOutLeft
  slideOutRight
  slideOutUp
  """

  @animations_path "lib/bootstrap5components/animations.ex"
  @test_path "test/bootstrap5components/animations_test.exs"

  def inject_in_code_gen(names) do
    elixir_lines =
      for {humanized, function, class} <- names do
        """
              @doc \"""
              Animate with a #{humanized} pattern.
              This function is not a component.
              It is a function meant to return a list of CSS classes.

              Options:

                * `:speed` (default: `true`) - supports the following values: `:normal`, `:fast`, `:faster`.
                * `:repeat` (default: `false`) - whether the animation repeats itself.

              You can see the resulting animation in the examples below.

              <!-- tabs-open -->

              ### Normal speed

              ```heex
              <p class={#{function}(speed: :normal, repeat: true)}>
                Animate as <strong>#{humanized}</strong>
              </p>
              ```

              The code above results in the following animation.
              This animation is played on repeat in order to better showcase the movements,
              but most of the time you'll probably prefer an animation that does not repeat.

              <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
                <h4 class="neutral">Animation:</h4>
                <p class="animate__animated #{class} animate__infinite">
                  Animate as <strong>#{humanized}</strong>
                </p>
              </blockquote>

              ### Fast speed

              ```heex
              <p class={#{function}(speed: :fast, repeat: true)}>
                Animate as <strong>#{humanized}</strong>
              </p>
              ```

              The code above results in the following animation.
              This animation is played on repeat in order to better showcase the movements,
              but most of the time you'll probably prefer an animation that does not repeat.

              <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
                <h4 class="neutral">Animation:</h4>
                <p class="animate__animated #{class} animate__fast animate__infinite">
                  Animate as <strong>#{humanized}</strong>
                </p>
              </blockquote>

              ### Faster speed (default)

              ```heex
              <p class={#{function}(speed: :faster, repeat: true)}>
                Animate as <strong>#{humanized}</strong>
              </p>
              ```

              The code above results in the following animation.
              This animation is played on repeat in order to better showcase the movements,
              but most of the time you'll probably prefer an animation that does not repeat.

              <blockquote class="neutral" style="overflow-x:hidden;overflow-y:hidden">
                <h4 class="neutral">Animation:</h4>
                <p class="animate__animated #{class} animate__faster animate__infinite">
                  Animate as <strong>#{humanized}</strong>
                </p>
              </blockquote>

              <!-- tabs-close -->
              \"""
              def #{function}(opts \\\\\\\\ []) do
                unquote_splicing(maybe_raise_not_implemented)
                speed = Keyword.get(opts, :speed, :faster)
                repeat = Keyword.get(opts, :repeat, false)
                "animate__animated #{class} #\{speed_to_css_class(speed)\} #\{repeat_to_css_class(repeat)\}"
              end

        """
      end

    animations_contents = File.read!(@animations_path)
    # Normalize to unix line endings
    unix_animations_contents = String.replace(animations_contents, "\r\n", "\n")

    replacement = Regex.replace(
      ~r/      # START:BS5-ANIMATIONS\n((?!# END).)+# END:BS5-ANIMATIONS/s,
      unix_animations_contents,
      "      # START:BS5-ANIMATIONS\n#{elixir_lines}      # END:BS5-ANIMATIONS"
    )

    # Replace the original file
    File.write(@animations_path, replacement)
  end

  def inject_in_tests(names) do
    functions_from_main_module_raise_error =
      for {humanized, function, class} <- names do
        """
            test "#{humanized} animation" do
              assert canonical_css_classes(MyComponents.#{function}()) ==
                  "animate__animated #{class} animate__faster"

              assert canonical_css_classes(MyComponents.#{function}(speed: :normal)) ==
                  "animate__animated #{class}"

              assert canonical_css_classes(MyComponents.#{function}(speed: :fast)) ==
                  "animate__animated #{class} animate__fast"

              assert canonical_css_classes(MyComponents.#{function}(speed: :faster)) ==
                  "animate__animated #{class} animate__faster"

              assert canonical_css_classes(MyComponents.#{function}(repeat: true)) ==
                  "animate__animated #{class} animate__faster animate__infinite"

              assert canonical_css_classes(MyComponents.#{function}(speed: :normal, repeat: true)) ==
                  "animate__animated #{class} animate__infinite"

              assert String.trim(MyComponents.#{function}(speed: :fast, repeat: true)) ==
                  "animate__animated #{class} animate__fast animate__infinite"

              assert String.trim(MyComponents.#{function}(speed: :faster, repeat: true)) ==
                  "animate__animated #{class} animate__faster animate__infinite"
            end
        """
      end

    newline_separated_tests = Enum.intersperse(functions_from_main_module_raise_error, "\n")

    test_contents = File.read!(@test_path)
    # Normalize to unix line endings
    unix_test_contents = String.replace(test_contents, "\r\n", "\n")

    replacement = Regex.replace(
      ~r/    # START:BS5-ANIMATIONS-INTEGRATION\n((?!# END).)+# END:BS5-ANIMATIONS-INTEGRATION/s,
      unix_test_contents,
      "    # START:BS5-ANIMATIONS-INTEGRATION\n#{newline_separated_tests}    # END:BS5-ANIMATIONS-INTEGRATION"
    )

    # Replace the original file
    File.write(@test_path, replacement)
  end

  def inject_in_error_raising_tests(names) do
    functions_from_main_module_raise_error =
      for {humanized, function, _class} <- names do
        """
            test "#{humanized} animation" do
              assert_raise DocumentationOnlyError, fn ->
                Bootstrap5Components.#{function}()
              end

              assert_raise DocumentationOnlyError, fn ->
                Bootstrap5Components.#{function}([])
              end

              assert_raise DocumentationOnlyError, fn ->
                Bootstrap5Components.#{function}(speed: :normal)
              end

              assert_raise DocumentationOnlyError, fn ->
                Bootstrap5Components.#{function}(speed: :fast)
              end

              assert_raise DocumentationOnlyError, fn ->
                Bootstrap5Components.#{function}(speed: :faster)
              end


              assert_raise DocumentationOnlyError, fn ->
                Bootstrap5Components.#{function}(repeat: true)
              end
            end
        """
      end

    newline_separated_tests = Enum.intersperse(functions_from_main_module_raise_error, "\n")

    test_contents = File.read!(@test_path)
    # Normalize to unix line endings
    unix_test_contents = String.replace(test_contents, "\r\n", "\n")

    replacement = Regex.replace(
      ~r/    # START:BS5-ANIMATIONS-ERRORS\n((?!# END).)+# END:BS5-ANIMATIONS-ERRORS/s,
      unix_test_contents,
      "    # START:BS5-ANIMATIONS-ERRORS\n#{newline_separated_tests}    # END:BS5-ANIMATIONS-ERRORS"
    )

    # Replace the original file
    File.write(@test_path, replacement)
  end

  def run() do
    names =
      for line <- String.split(@js_classes, "\n"), line != "", not String.starts_with?(line, "#") do
        line = String.trim(line)
        snake_case = Macro.underscore(line)
        humanized = String.replace(snake_case, "_", " ")
        class_name = "animate__#{line}"
        function_name = "animate_#{snake_case}"

        {humanized, function_name, class_name}
      end

    inject_in_code_gen(names)
    inject_in_error_raising_tests(names)
    inject_in_tests(names)
  end
end

Bootstrap5Components.GenerateAnimations.run()
