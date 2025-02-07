defmodule Bootstrap5components.AnimationsTest do
  use ExUnit.Case
  doctest Bootstrap5Components
  alias CodeGen.DocumentationOnlyError

  defp canonical_css_classes(classes) do
    classes
    |> String.trim()
    |> String.split()
    |> Enum.join(" ")
  end

  describe "animation functions;" do
    # START:BS5-ANIMATIONS-INTEGRATION
    test "bounce animation" do
      assert canonical_css_classes(MyComponents.animate_bounce()) ==
          "animate__animated animate__bounce animate__faster"

      assert canonical_css_classes(MyComponents.animate_bounce(speed: :normal)) ==
          "animate__animated animate__bounce"

      assert canonical_css_classes(MyComponents.animate_bounce(speed: :fast)) ==
          "animate__animated animate__bounce animate__fast"

      assert canonical_css_classes(MyComponents.animate_bounce(speed: :faster)) ==
          "animate__animated animate__bounce animate__faster"

      assert canonical_css_classes(MyComponents.animate_bounce(repeat: true)) ==
          "animate__animated animate__bounce animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_bounce(speed: :normal, repeat: true)) ==
          "animate__animated animate__bounce animate__infinite"

      assert String.trim(MyComponents.animate_bounce(speed: :fast, repeat: true)) ==
          "animate__animated animate__bounce animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_bounce(speed: :faster, repeat: true)) ==
          "animate__animated animate__bounce animate__faster animate__infinite"
    end

    test "flash animation" do
      assert canonical_css_classes(MyComponents.animate_flash()) ==
          "animate__animated animate__flash animate__faster"

      assert canonical_css_classes(MyComponents.animate_flash(speed: :normal)) ==
          "animate__animated animate__flash"

      assert canonical_css_classes(MyComponents.animate_flash(speed: :fast)) ==
          "animate__animated animate__flash animate__fast"

      assert canonical_css_classes(MyComponents.animate_flash(speed: :faster)) ==
          "animate__animated animate__flash animate__faster"

      assert canonical_css_classes(MyComponents.animate_flash(repeat: true)) ==
          "animate__animated animate__flash animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_flash(speed: :normal, repeat: true)) ==
          "animate__animated animate__flash animate__infinite"

      assert String.trim(MyComponents.animate_flash(speed: :fast, repeat: true)) ==
          "animate__animated animate__flash animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_flash(speed: :faster, repeat: true)) ==
          "animate__animated animate__flash animate__faster animate__infinite"
    end

    test "pulse animation" do
      assert canonical_css_classes(MyComponents.animate_pulse()) ==
          "animate__animated animate__pulse animate__faster"

      assert canonical_css_classes(MyComponents.animate_pulse(speed: :normal)) ==
          "animate__animated animate__pulse"

      assert canonical_css_classes(MyComponents.animate_pulse(speed: :fast)) ==
          "animate__animated animate__pulse animate__fast"

      assert canonical_css_classes(MyComponents.animate_pulse(speed: :faster)) ==
          "animate__animated animate__pulse animate__faster"

      assert canonical_css_classes(MyComponents.animate_pulse(repeat: true)) ==
          "animate__animated animate__pulse animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_pulse(speed: :normal, repeat: true)) ==
          "animate__animated animate__pulse animate__infinite"

      assert String.trim(MyComponents.animate_pulse(speed: :fast, repeat: true)) ==
          "animate__animated animate__pulse animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_pulse(speed: :faster, repeat: true)) ==
          "animate__animated animate__pulse animate__faster animate__infinite"
    end

    test "rubber band animation" do
      assert canonical_css_classes(MyComponents.animate_rubber_band()) ==
          "animate__animated animate__rubberBand animate__faster"

      assert canonical_css_classes(MyComponents.animate_rubber_band(speed: :normal)) ==
          "animate__animated animate__rubberBand"

      assert canonical_css_classes(MyComponents.animate_rubber_band(speed: :fast)) ==
          "animate__animated animate__rubberBand animate__fast"

      assert canonical_css_classes(MyComponents.animate_rubber_band(speed: :faster)) ==
          "animate__animated animate__rubberBand animate__faster"

      assert canonical_css_classes(MyComponents.animate_rubber_band(repeat: true)) ==
          "animate__animated animate__rubberBand animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_rubber_band(speed: :normal, repeat: true)) ==
          "animate__animated animate__rubberBand animate__infinite"

      assert String.trim(MyComponents.animate_rubber_band(speed: :fast, repeat: true)) ==
          "animate__animated animate__rubberBand animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_rubber_band(speed: :faster, repeat: true)) ==
          "animate__animated animate__rubberBand animate__faster animate__infinite"
    end

    test "shake x animation" do
      assert canonical_css_classes(MyComponents.animate_shake_x()) ==
          "animate__animated animate__shakeX animate__faster"

      assert canonical_css_classes(MyComponents.animate_shake_x(speed: :normal)) ==
          "animate__animated animate__shakeX"

      assert canonical_css_classes(MyComponents.animate_shake_x(speed: :fast)) ==
          "animate__animated animate__shakeX animate__fast"

      assert canonical_css_classes(MyComponents.animate_shake_x(speed: :faster)) ==
          "animate__animated animate__shakeX animate__faster"

      assert canonical_css_classes(MyComponents.animate_shake_x(repeat: true)) ==
          "animate__animated animate__shakeX animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_shake_x(speed: :normal, repeat: true)) ==
          "animate__animated animate__shakeX animate__infinite"

      assert String.trim(MyComponents.animate_shake_x(speed: :fast, repeat: true)) ==
          "animate__animated animate__shakeX animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_shake_x(speed: :faster, repeat: true)) ==
          "animate__animated animate__shakeX animate__faster animate__infinite"
    end

    test "shake y animation" do
      assert canonical_css_classes(MyComponents.animate_shake_y()) ==
          "animate__animated animate__shakeY animate__faster"

      assert canonical_css_classes(MyComponents.animate_shake_y(speed: :normal)) ==
          "animate__animated animate__shakeY"

      assert canonical_css_classes(MyComponents.animate_shake_y(speed: :fast)) ==
          "animate__animated animate__shakeY animate__fast"

      assert canonical_css_classes(MyComponents.animate_shake_y(speed: :faster)) ==
          "animate__animated animate__shakeY animate__faster"

      assert canonical_css_classes(MyComponents.animate_shake_y(repeat: true)) ==
          "animate__animated animate__shakeY animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_shake_y(speed: :normal, repeat: true)) ==
          "animate__animated animate__shakeY animate__infinite"

      assert String.trim(MyComponents.animate_shake_y(speed: :fast, repeat: true)) ==
          "animate__animated animate__shakeY animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_shake_y(speed: :faster, repeat: true)) ==
          "animate__animated animate__shakeY animate__faster animate__infinite"
    end

    test "head shake animation" do
      assert canonical_css_classes(MyComponents.animate_head_shake()) ==
          "animate__animated animate__headShake animate__faster"

      assert canonical_css_classes(MyComponents.animate_head_shake(speed: :normal)) ==
          "animate__animated animate__headShake"

      assert canonical_css_classes(MyComponents.animate_head_shake(speed: :fast)) ==
          "animate__animated animate__headShake animate__fast"

      assert canonical_css_classes(MyComponents.animate_head_shake(speed: :faster)) ==
          "animate__animated animate__headShake animate__faster"

      assert canonical_css_classes(MyComponents.animate_head_shake(repeat: true)) ==
          "animate__animated animate__headShake animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_head_shake(speed: :normal, repeat: true)) ==
          "animate__animated animate__headShake animate__infinite"

      assert String.trim(MyComponents.animate_head_shake(speed: :fast, repeat: true)) ==
          "animate__animated animate__headShake animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_head_shake(speed: :faster, repeat: true)) ==
          "animate__animated animate__headShake animate__faster animate__infinite"
    end

    test "swing animation" do
      assert canonical_css_classes(MyComponents.animate_swing()) ==
          "animate__animated animate__swing animate__faster"

      assert canonical_css_classes(MyComponents.animate_swing(speed: :normal)) ==
          "animate__animated animate__swing"

      assert canonical_css_classes(MyComponents.animate_swing(speed: :fast)) ==
          "animate__animated animate__swing animate__fast"

      assert canonical_css_classes(MyComponents.animate_swing(speed: :faster)) ==
          "animate__animated animate__swing animate__faster"

      assert canonical_css_classes(MyComponents.animate_swing(repeat: true)) ==
          "animate__animated animate__swing animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_swing(speed: :normal, repeat: true)) ==
          "animate__animated animate__swing animate__infinite"

      assert String.trim(MyComponents.animate_swing(speed: :fast, repeat: true)) ==
          "animate__animated animate__swing animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_swing(speed: :faster, repeat: true)) ==
          "animate__animated animate__swing animate__faster animate__infinite"
    end

    test "tada animation" do
      assert canonical_css_classes(MyComponents.animate_tada()) ==
          "animate__animated animate__tada animate__faster"

      assert canonical_css_classes(MyComponents.animate_tada(speed: :normal)) ==
          "animate__animated animate__tada"

      assert canonical_css_classes(MyComponents.animate_tada(speed: :fast)) ==
          "animate__animated animate__tada animate__fast"

      assert canonical_css_classes(MyComponents.animate_tada(speed: :faster)) ==
          "animate__animated animate__tada animate__faster"

      assert canonical_css_classes(MyComponents.animate_tada(repeat: true)) ==
          "animate__animated animate__tada animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_tada(speed: :normal, repeat: true)) ==
          "animate__animated animate__tada animate__infinite"

      assert String.trim(MyComponents.animate_tada(speed: :fast, repeat: true)) ==
          "animate__animated animate__tada animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_tada(speed: :faster, repeat: true)) ==
          "animate__animated animate__tada animate__faster animate__infinite"
    end

    test "wobble animation" do
      assert canonical_css_classes(MyComponents.animate_wobble()) ==
          "animate__animated animate__wobble animate__faster"

      assert canonical_css_classes(MyComponents.animate_wobble(speed: :normal)) ==
          "animate__animated animate__wobble"

      assert canonical_css_classes(MyComponents.animate_wobble(speed: :fast)) ==
          "animate__animated animate__wobble animate__fast"

      assert canonical_css_classes(MyComponents.animate_wobble(speed: :faster)) ==
          "animate__animated animate__wobble animate__faster"

      assert canonical_css_classes(MyComponents.animate_wobble(repeat: true)) ==
          "animate__animated animate__wobble animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_wobble(speed: :normal, repeat: true)) ==
          "animate__animated animate__wobble animate__infinite"

      assert String.trim(MyComponents.animate_wobble(speed: :fast, repeat: true)) ==
          "animate__animated animate__wobble animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_wobble(speed: :faster, repeat: true)) ==
          "animate__animated animate__wobble animate__faster animate__infinite"
    end

    test "jello animation" do
      assert canonical_css_classes(MyComponents.animate_jello()) ==
          "animate__animated animate__jello animate__faster"

      assert canonical_css_classes(MyComponents.animate_jello(speed: :normal)) ==
          "animate__animated animate__jello"

      assert canonical_css_classes(MyComponents.animate_jello(speed: :fast)) ==
          "animate__animated animate__jello animate__fast"

      assert canonical_css_classes(MyComponents.animate_jello(speed: :faster)) ==
          "animate__animated animate__jello animate__faster"

      assert canonical_css_classes(MyComponents.animate_jello(repeat: true)) ==
          "animate__animated animate__jello animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_jello(speed: :normal, repeat: true)) ==
          "animate__animated animate__jello animate__infinite"

      assert String.trim(MyComponents.animate_jello(speed: :fast, repeat: true)) ==
          "animate__animated animate__jello animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_jello(speed: :faster, repeat: true)) ==
          "animate__animated animate__jello animate__faster animate__infinite"
    end

    test "heart beat animation" do
      assert canonical_css_classes(MyComponents.animate_heart_beat()) ==
          "animate__animated animate__heartBeat animate__faster"

      assert canonical_css_classes(MyComponents.animate_heart_beat(speed: :normal)) ==
          "animate__animated animate__heartBeat"

      assert canonical_css_classes(MyComponents.animate_heart_beat(speed: :fast)) ==
          "animate__animated animate__heartBeat animate__fast"

      assert canonical_css_classes(MyComponents.animate_heart_beat(speed: :faster)) ==
          "animate__animated animate__heartBeat animate__faster"

      assert canonical_css_classes(MyComponents.animate_heart_beat(repeat: true)) ==
          "animate__animated animate__heartBeat animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_heart_beat(speed: :normal, repeat: true)) ==
          "animate__animated animate__heartBeat animate__infinite"

      assert String.trim(MyComponents.animate_heart_beat(speed: :fast, repeat: true)) ==
          "animate__animated animate__heartBeat animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_heart_beat(speed: :faster, repeat: true)) ==
          "animate__animated animate__heartBeat animate__faster animate__infinite"
    end

    test "back in down animation" do
      assert canonical_css_classes(MyComponents.animate_back_in_down()) ==
          "animate__animated animate__backInDown animate__faster"

      assert canonical_css_classes(MyComponents.animate_back_in_down(speed: :normal)) ==
          "animate__animated animate__backInDown"

      assert canonical_css_classes(MyComponents.animate_back_in_down(speed: :fast)) ==
          "animate__animated animate__backInDown animate__fast"

      assert canonical_css_classes(MyComponents.animate_back_in_down(speed: :faster)) ==
          "animate__animated animate__backInDown animate__faster"

      assert canonical_css_classes(MyComponents.animate_back_in_down(repeat: true)) ==
          "animate__animated animate__backInDown animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_back_in_down(speed: :normal, repeat: true)) ==
          "animate__animated animate__backInDown animate__infinite"

      assert String.trim(MyComponents.animate_back_in_down(speed: :fast, repeat: true)) ==
          "animate__animated animate__backInDown animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_back_in_down(speed: :faster, repeat: true)) ==
          "animate__animated animate__backInDown animate__faster animate__infinite"
    end

    test "back in left animation" do
      assert canonical_css_classes(MyComponents.animate_back_in_left()) ==
          "animate__animated animate__backInLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_back_in_left(speed: :normal)) ==
          "animate__animated animate__backInLeft"

      assert canonical_css_classes(MyComponents.animate_back_in_left(speed: :fast)) ==
          "animate__animated animate__backInLeft animate__fast"

      assert canonical_css_classes(MyComponents.animate_back_in_left(speed: :faster)) ==
          "animate__animated animate__backInLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_back_in_left(repeat: true)) ==
          "animate__animated animate__backInLeft animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_back_in_left(speed: :normal, repeat: true)) ==
          "animate__animated animate__backInLeft animate__infinite"

      assert String.trim(MyComponents.animate_back_in_left(speed: :fast, repeat: true)) ==
          "animate__animated animate__backInLeft animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_back_in_left(speed: :faster, repeat: true)) ==
          "animate__animated animate__backInLeft animate__faster animate__infinite"
    end

    test "back in right animation" do
      assert canonical_css_classes(MyComponents.animate_back_in_right()) ==
          "animate__animated animate__backInRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_back_in_right(speed: :normal)) ==
          "animate__animated animate__backInRight"

      assert canonical_css_classes(MyComponents.animate_back_in_right(speed: :fast)) ==
          "animate__animated animate__backInRight animate__fast"

      assert canonical_css_classes(MyComponents.animate_back_in_right(speed: :faster)) ==
          "animate__animated animate__backInRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_back_in_right(repeat: true)) ==
          "animate__animated animate__backInRight animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_back_in_right(speed: :normal, repeat: true)) ==
          "animate__animated animate__backInRight animate__infinite"

      assert String.trim(MyComponents.animate_back_in_right(speed: :fast, repeat: true)) ==
          "animate__animated animate__backInRight animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_back_in_right(speed: :faster, repeat: true)) ==
          "animate__animated animate__backInRight animate__faster animate__infinite"
    end

    test "back in up animation" do
      assert canonical_css_classes(MyComponents.animate_back_in_up()) ==
          "animate__animated animate__backInUp animate__faster"

      assert canonical_css_classes(MyComponents.animate_back_in_up(speed: :normal)) ==
          "animate__animated animate__backInUp"

      assert canonical_css_classes(MyComponents.animate_back_in_up(speed: :fast)) ==
          "animate__animated animate__backInUp animate__fast"

      assert canonical_css_classes(MyComponents.animate_back_in_up(speed: :faster)) ==
          "animate__animated animate__backInUp animate__faster"

      assert canonical_css_classes(MyComponents.animate_back_in_up(repeat: true)) ==
          "animate__animated animate__backInUp animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_back_in_up(speed: :normal, repeat: true)) ==
          "animate__animated animate__backInUp animate__infinite"

      assert String.trim(MyComponents.animate_back_in_up(speed: :fast, repeat: true)) ==
          "animate__animated animate__backInUp animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_back_in_up(speed: :faster, repeat: true)) ==
          "animate__animated animate__backInUp animate__faster animate__infinite"
    end

    test "back out down animation" do
      assert canonical_css_classes(MyComponents.animate_back_out_down()) ==
          "animate__animated animate__backOutDown animate__faster"

      assert canonical_css_classes(MyComponents.animate_back_out_down(speed: :normal)) ==
          "animate__animated animate__backOutDown"

      assert canonical_css_classes(MyComponents.animate_back_out_down(speed: :fast)) ==
          "animate__animated animate__backOutDown animate__fast"

      assert canonical_css_classes(MyComponents.animate_back_out_down(speed: :faster)) ==
          "animate__animated animate__backOutDown animate__faster"

      assert canonical_css_classes(MyComponents.animate_back_out_down(repeat: true)) ==
          "animate__animated animate__backOutDown animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_back_out_down(speed: :normal, repeat: true)) ==
          "animate__animated animate__backOutDown animate__infinite"

      assert String.trim(MyComponents.animate_back_out_down(speed: :fast, repeat: true)) ==
          "animate__animated animate__backOutDown animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_back_out_down(speed: :faster, repeat: true)) ==
          "animate__animated animate__backOutDown animate__faster animate__infinite"
    end

    test "back out left animation" do
      assert canonical_css_classes(MyComponents.animate_back_out_left()) ==
          "animate__animated animate__backOutLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_back_out_left(speed: :normal)) ==
          "animate__animated animate__backOutLeft"

      assert canonical_css_classes(MyComponents.animate_back_out_left(speed: :fast)) ==
          "animate__animated animate__backOutLeft animate__fast"

      assert canonical_css_classes(MyComponents.animate_back_out_left(speed: :faster)) ==
          "animate__animated animate__backOutLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_back_out_left(repeat: true)) ==
          "animate__animated animate__backOutLeft animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_back_out_left(speed: :normal, repeat: true)) ==
          "animate__animated animate__backOutLeft animate__infinite"

      assert String.trim(MyComponents.animate_back_out_left(speed: :fast, repeat: true)) ==
          "animate__animated animate__backOutLeft animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_back_out_left(speed: :faster, repeat: true)) ==
          "animate__animated animate__backOutLeft animate__faster animate__infinite"
    end

    test "back out right animation" do
      assert canonical_css_classes(MyComponents.animate_back_out_right()) ==
          "animate__animated animate__backOutRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_back_out_right(speed: :normal)) ==
          "animate__animated animate__backOutRight"

      assert canonical_css_classes(MyComponents.animate_back_out_right(speed: :fast)) ==
          "animate__animated animate__backOutRight animate__fast"

      assert canonical_css_classes(MyComponents.animate_back_out_right(speed: :faster)) ==
          "animate__animated animate__backOutRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_back_out_right(repeat: true)) ==
          "animate__animated animate__backOutRight animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_back_out_right(speed: :normal, repeat: true)) ==
          "animate__animated animate__backOutRight animate__infinite"

      assert String.trim(MyComponents.animate_back_out_right(speed: :fast, repeat: true)) ==
          "animate__animated animate__backOutRight animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_back_out_right(speed: :faster, repeat: true)) ==
          "animate__animated animate__backOutRight animate__faster animate__infinite"
    end

    test "back out up animation" do
      assert canonical_css_classes(MyComponents.animate_back_out_up()) ==
          "animate__animated animate__backOutUp animate__faster"

      assert canonical_css_classes(MyComponents.animate_back_out_up(speed: :normal)) ==
          "animate__animated animate__backOutUp"

      assert canonical_css_classes(MyComponents.animate_back_out_up(speed: :fast)) ==
          "animate__animated animate__backOutUp animate__fast"

      assert canonical_css_classes(MyComponents.animate_back_out_up(speed: :faster)) ==
          "animate__animated animate__backOutUp animate__faster"

      assert canonical_css_classes(MyComponents.animate_back_out_up(repeat: true)) ==
          "animate__animated animate__backOutUp animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_back_out_up(speed: :normal, repeat: true)) ==
          "animate__animated animate__backOutUp animate__infinite"

      assert String.trim(MyComponents.animate_back_out_up(speed: :fast, repeat: true)) ==
          "animate__animated animate__backOutUp animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_back_out_up(speed: :faster, repeat: true)) ==
          "animate__animated animate__backOutUp animate__faster animate__infinite"
    end

    test "bounce in animation" do
      assert canonical_css_classes(MyComponents.animate_bounce_in()) ==
          "animate__animated animate__bounceIn animate__faster"

      assert canonical_css_classes(MyComponents.animate_bounce_in(speed: :normal)) ==
          "animate__animated animate__bounceIn"

      assert canonical_css_classes(MyComponents.animate_bounce_in(speed: :fast)) ==
          "animate__animated animate__bounceIn animate__fast"

      assert canonical_css_classes(MyComponents.animate_bounce_in(speed: :faster)) ==
          "animate__animated animate__bounceIn animate__faster"

      assert canonical_css_classes(MyComponents.animate_bounce_in(repeat: true)) ==
          "animate__animated animate__bounceIn animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_bounce_in(speed: :normal, repeat: true)) ==
          "animate__animated animate__bounceIn animate__infinite"

      assert String.trim(MyComponents.animate_bounce_in(speed: :fast, repeat: true)) ==
          "animate__animated animate__bounceIn animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_bounce_in(speed: :faster, repeat: true)) ==
          "animate__animated animate__bounceIn animate__faster animate__infinite"
    end

    test "bounce in down animation" do
      assert canonical_css_classes(MyComponents.animate_bounce_in_down()) ==
          "animate__animated animate__bounceInDown animate__faster"

      assert canonical_css_classes(MyComponents.animate_bounce_in_down(speed: :normal)) ==
          "animate__animated animate__bounceInDown"

      assert canonical_css_classes(MyComponents.animate_bounce_in_down(speed: :fast)) ==
          "animate__animated animate__bounceInDown animate__fast"

      assert canonical_css_classes(MyComponents.animate_bounce_in_down(speed: :faster)) ==
          "animate__animated animate__bounceInDown animate__faster"

      assert canonical_css_classes(MyComponents.animate_bounce_in_down(repeat: true)) ==
          "animate__animated animate__bounceInDown animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_bounce_in_down(speed: :normal, repeat: true)) ==
          "animate__animated animate__bounceInDown animate__infinite"

      assert String.trim(MyComponents.animate_bounce_in_down(speed: :fast, repeat: true)) ==
          "animate__animated animate__bounceInDown animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_bounce_in_down(speed: :faster, repeat: true)) ==
          "animate__animated animate__bounceInDown animate__faster animate__infinite"
    end

    test "bounce in left animation" do
      assert canonical_css_classes(MyComponents.animate_bounce_in_left()) ==
          "animate__animated animate__bounceInLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_bounce_in_left(speed: :normal)) ==
          "animate__animated animate__bounceInLeft"

      assert canonical_css_classes(MyComponents.animate_bounce_in_left(speed: :fast)) ==
          "animate__animated animate__bounceInLeft animate__fast"

      assert canonical_css_classes(MyComponents.animate_bounce_in_left(speed: :faster)) ==
          "animate__animated animate__bounceInLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_bounce_in_left(repeat: true)) ==
          "animate__animated animate__bounceInLeft animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_bounce_in_left(speed: :normal, repeat: true)) ==
          "animate__animated animate__bounceInLeft animate__infinite"

      assert String.trim(MyComponents.animate_bounce_in_left(speed: :fast, repeat: true)) ==
          "animate__animated animate__bounceInLeft animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_bounce_in_left(speed: :faster, repeat: true)) ==
          "animate__animated animate__bounceInLeft animate__faster animate__infinite"
    end

    test "bounce in right animation" do
      assert canonical_css_classes(MyComponents.animate_bounce_in_right()) ==
          "animate__animated animate__bounceInRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_bounce_in_right(speed: :normal)) ==
          "animate__animated animate__bounceInRight"

      assert canonical_css_classes(MyComponents.animate_bounce_in_right(speed: :fast)) ==
          "animate__animated animate__bounceInRight animate__fast"

      assert canonical_css_classes(MyComponents.animate_bounce_in_right(speed: :faster)) ==
          "animate__animated animate__bounceInRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_bounce_in_right(repeat: true)) ==
          "animate__animated animate__bounceInRight animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_bounce_in_right(speed: :normal, repeat: true)) ==
          "animate__animated animate__bounceInRight animate__infinite"

      assert String.trim(MyComponents.animate_bounce_in_right(speed: :fast, repeat: true)) ==
          "animate__animated animate__bounceInRight animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_bounce_in_right(speed: :faster, repeat: true)) ==
          "animate__animated animate__bounceInRight animate__faster animate__infinite"
    end

    test "bounce in up animation" do
      assert canonical_css_classes(MyComponents.animate_bounce_in_up()) ==
          "animate__animated animate__bounceInUp animate__faster"

      assert canonical_css_classes(MyComponents.animate_bounce_in_up(speed: :normal)) ==
          "animate__animated animate__bounceInUp"

      assert canonical_css_classes(MyComponents.animate_bounce_in_up(speed: :fast)) ==
          "animate__animated animate__bounceInUp animate__fast"

      assert canonical_css_classes(MyComponents.animate_bounce_in_up(speed: :faster)) ==
          "animate__animated animate__bounceInUp animate__faster"

      assert canonical_css_classes(MyComponents.animate_bounce_in_up(repeat: true)) ==
          "animate__animated animate__bounceInUp animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_bounce_in_up(speed: :normal, repeat: true)) ==
          "animate__animated animate__bounceInUp animate__infinite"

      assert String.trim(MyComponents.animate_bounce_in_up(speed: :fast, repeat: true)) ==
          "animate__animated animate__bounceInUp animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_bounce_in_up(speed: :faster, repeat: true)) ==
          "animate__animated animate__bounceInUp animate__faster animate__infinite"
    end

    test "bounce out animation" do
      assert canonical_css_classes(MyComponents.animate_bounce_out()) ==
          "animate__animated animate__bounceOut animate__faster"

      assert canonical_css_classes(MyComponents.animate_bounce_out(speed: :normal)) ==
          "animate__animated animate__bounceOut"

      assert canonical_css_classes(MyComponents.animate_bounce_out(speed: :fast)) ==
          "animate__animated animate__bounceOut animate__fast"

      assert canonical_css_classes(MyComponents.animate_bounce_out(speed: :faster)) ==
          "animate__animated animate__bounceOut animate__faster"

      assert canonical_css_classes(MyComponents.animate_bounce_out(repeat: true)) ==
          "animate__animated animate__bounceOut animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_bounce_out(speed: :normal, repeat: true)) ==
          "animate__animated animate__bounceOut animate__infinite"

      assert String.trim(MyComponents.animate_bounce_out(speed: :fast, repeat: true)) ==
          "animate__animated animate__bounceOut animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_bounce_out(speed: :faster, repeat: true)) ==
          "animate__animated animate__bounceOut animate__faster animate__infinite"
    end

    test "bounce out down animation" do
      assert canonical_css_classes(MyComponents.animate_bounce_out_down()) ==
          "animate__animated animate__bounceOutDown animate__faster"

      assert canonical_css_classes(MyComponents.animate_bounce_out_down(speed: :normal)) ==
          "animate__animated animate__bounceOutDown"

      assert canonical_css_classes(MyComponents.animate_bounce_out_down(speed: :fast)) ==
          "animate__animated animate__bounceOutDown animate__fast"

      assert canonical_css_classes(MyComponents.animate_bounce_out_down(speed: :faster)) ==
          "animate__animated animate__bounceOutDown animate__faster"

      assert canonical_css_classes(MyComponents.animate_bounce_out_down(repeat: true)) ==
          "animate__animated animate__bounceOutDown animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_bounce_out_down(speed: :normal, repeat: true)) ==
          "animate__animated animate__bounceOutDown animate__infinite"

      assert String.trim(MyComponents.animate_bounce_out_down(speed: :fast, repeat: true)) ==
          "animate__animated animate__bounceOutDown animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_bounce_out_down(speed: :faster, repeat: true)) ==
          "animate__animated animate__bounceOutDown animate__faster animate__infinite"
    end

    test "bounce out left animation" do
      assert canonical_css_classes(MyComponents.animate_bounce_out_left()) ==
          "animate__animated animate__bounceOutLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_bounce_out_left(speed: :normal)) ==
          "animate__animated animate__bounceOutLeft"

      assert canonical_css_classes(MyComponents.animate_bounce_out_left(speed: :fast)) ==
          "animate__animated animate__bounceOutLeft animate__fast"

      assert canonical_css_classes(MyComponents.animate_bounce_out_left(speed: :faster)) ==
          "animate__animated animate__bounceOutLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_bounce_out_left(repeat: true)) ==
          "animate__animated animate__bounceOutLeft animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_bounce_out_left(speed: :normal, repeat: true)) ==
          "animate__animated animate__bounceOutLeft animate__infinite"

      assert String.trim(MyComponents.animate_bounce_out_left(speed: :fast, repeat: true)) ==
          "animate__animated animate__bounceOutLeft animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_bounce_out_left(speed: :faster, repeat: true)) ==
          "animate__animated animate__bounceOutLeft animate__faster animate__infinite"
    end

    test "bounce out right animation" do
      assert canonical_css_classes(MyComponents.animate_bounce_out_right()) ==
          "animate__animated animate__bounceOutRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_bounce_out_right(speed: :normal)) ==
          "animate__animated animate__bounceOutRight"

      assert canonical_css_classes(MyComponents.animate_bounce_out_right(speed: :fast)) ==
          "animate__animated animate__bounceOutRight animate__fast"

      assert canonical_css_classes(MyComponents.animate_bounce_out_right(speed: :faster)) ==
          "animate__animated animate__bounceOutRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_bounce_out_right(repeat: true)) ==
          "animate__animated animate__bounceOutRight animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_bounce_out_right(speed: :normal, repeat: true)) ==
          "animate__animated animate__bounceOutRight animate__infinite"

      assert String.trim(MyComponents.animate_bounce_out_right(speed: :fast, repeat: true)) ==
          "animate__animated animate__bounceOutRight animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_bounce_out_right(speed: :faster, repeat: true)) ==
          "animate__animated animate__bounceOutRight animate__faster animate__infinite"
    end

    test "bounce out up animation" do
      assert canonical_css_classes(MyComponents.animate_bounce_out_up()) ==
          "animate__animated animate__bounceOutUp animate__faster"

      assert canonical_css_classes(MyComponents.animate_bounce_out_up(speed: :normal)) ==
          "animate__animated animate__bounceOutUp"

      assert canonical_css_classes(MyComponents.animate_bounce_out_up(speed: :fast)) ==
          "animate__animated animate__bounceOutUp animate__fast"

      assert canonical_css_classes(MyComponents.animate_bounce_out_up(speed: :faster)) ==
          "animate__animated animate__bounceOutUp animate__faster"

      assert canonical_css_classes(MyComponents.animate_bounce_out_up(repeat: true)) ==
          "animate__animated animate__bounceOutUp animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_bounce_out_up(speed: :normal, repeat: true)) ==
          "animate__animated animate__bounceOutUp animate__infinite"

      assert String.trim(MyComponents.animate_bounce_out_up(speed: :fast, repeat: true)) ==
          "animate__animated animate__bounceOutUp animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_bounce_out_up(speed: :faster, repeat: true)) ==
          "animate__animated animate__bounceOutUp animate__faster animate__infinite"
    end

    test "fade in animation" do
      assert canonical_css_classes(MyComponents.animate_fade_in()) ==
          "animate__animated animate__fadeIn animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in(speed: :normal)) ==
          "animate__animated animate__fadeIn"

      assert canonical_css_classes(MyComponents.animate_fade_in(speed: :fast)) ==
          "animate__animated animate__fadeIn animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_in(speed: :faster)) ==
          "animate__animated animate__fadeIn animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in(repeat: true)) ==
          "animate__animated animate__fadeIn animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_in(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeIn animate__infinite"

      assert String.trim(MyComponents.animate_fade_in(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeIn animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_in(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeIn animate__faster animate__infinite"
    end

    test "fade in down animation" do
      assert canonical_css_classes(MyComponents.animate_fade_in_down()) ==
          "animate__animated animate__fadeInDown animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_down(speed: :normal)) ==
          "animate__animated animate__fadeInDown"

      assert canonical_css_classes(MyComponents.animate_fade_in_down(speed: :fast)) ==
          "animate__animated animate__fadeInDown animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_in_down(speed: :faster)) ==
          "animate__animated animate__fadeInDown animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_down(repeat: true)) ==
          "animate__animated animate__fadeInDown animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_in_down(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeInDown animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_down(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeInDown animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_down(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeInDown animate__faster animate__infinite"
    end

    test "fade in down big animation" do
      assert canonical_css_classes(MyComponents.animate_fade_in_down_big()) ==
          "animate__animated animate__fadeInDownBig animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_down_big(speed: :normal)) ==
          "animate__animated animate__fadeInDownBig"

      assert canonical_css_classes(MyComponents.animate_fade_in_down_big(speed: :fast)) ==
          "animate__animated animate__fadeInDownBig animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_in_down_big(speed: :faster)) ==
          "animate__animated animate__fadeInDownBig animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_down_big(repeat: true)) ==
          "animate__animated animate__fadeInDownBig animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_in_down_big(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeInDownBig animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_down_big(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeInDownBig animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_down_big(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeInDownBig animate__faster animate__infinite"
    end

    test "fade in left animation" do
      assert canonical_css_classes(MyComponents.animate_fade_in_left()) ==
          "animate__animated animate__fadeInLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_left(speed: :normal)) ==
          "animate__animated animate__fadeInLeft"

      assert canonical_css_classes(MyComponents.animate_fade_in_left(speed: :fast)) ==
          "animate__animated animate__fadeInLeft animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_in_left(speed: :faster)) ==
          "animate__animated animate__fadeInLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_left(repeat: true)) ==
          "animate__animated animate__fadeInLeft animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_in_left(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeInLeft animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_left(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeInLeft animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_left(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeInLeft animate__faster animate__infinite"
    end

    test "fade in left big animation" do
      assert canonical_css_classes(MyComponents.animate_fade_in_left_big()) ==
          "animate__animated animate__fadeInLeftBig animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_left_big(speed: :normal)) ==
          "animate__animated animate__fadeInLeftBig"

      assert canonical_css_classes(MyComponents.animate_fade_in_left_big(speed: :fast)) ==
          "animate__animated animate__fadeInLeftBig animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_in_left_big(speed: :faster)) ==
          "animate__animated animate__fadeInLeftBig animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_left_big(repeat: true)) ==
          "animate__animated animate__fadeInLeftBig animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_in_left_big(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeInLeftBig animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_left_big(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeInLeftBig animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_left_big(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeInLeftBig animate__faster animate__infinite"
    end

    test "fade in right animation" do
      assert canonical_css_classes(MyComponents.animate_fade_in_right()) ==
          "animate__animated animate__fadeInRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_right(speed: :normal)) ==
          "animate__animated animate__fadeInRight"

      assert canonical_css_classes(MyComponents.animate_fade_in_right(speed: :fast)) ==
          "animate__animated animate__fadeInRight animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_in_right(speed: :faster)) ==
          "animate__animated animate__fadeInRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_right(repeat: true)) ==
          "animate__animated animate__fadeInRight animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_in_right(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeInRight animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_right(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeInRight animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_right(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeInRight animate__faster animate__infinite"
    end

    test "fade in right big animation" do
      assert canonical_css_classes(MyComponents.animate_fade_in_right_big()) ==
          "animate__animated animate__fadeInRightBig animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_right_big(speed: :normal)) ==
          "animate__animated animate__fadeInRightBig"

      assert canonical_css_classes(MyComponents.animate_fade_in_right_big(speed: :fast)) ==
          "animate__animated animate__fadeInRightBig animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_in_right_big(speed: :faster)) ==
          "animate__animated animate__fadeInRightBig animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_right_big(repeat: true)) ==
          "animate__animated animate__fadeInRightBig animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_in_right_big(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeInRightBig animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_right_big(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeInRightBig animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_right_big(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeInRightBig animate__faster animate__infinite"
    end

    test "fade in up animation" do
      assert canonical_css_classes(MyComponents.animate_fade_in_up()) ==
          "animate__animated animate__fadeInUp animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_up(speed: :normal)) ==
          "animate__animated animate__fadeInUp"

      assert canonical_css_classes(MyComponents.animate_fade_in_up(speed: :fast)) ==
          "animate__animated animate__fadeInUp animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_in_up(speed: :faster)) ==
          "animate__animated animate__fadeInUp animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_up(repeat: true)) ==
          "animate__animated animate__fadeInUp animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_in_up(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeInUp animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_up(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeInUp animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_up(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeInUp animate__faster animate__infinite"
    end

    test "fade in up big animation" do
      assert canonical_css_classes(MyComponents.animate_fade_in_up_big()) ==
          "animate__animated animate__fadeInUpBig animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_up_big(speed: :normal)) ==
          "animate__animated animate__fadeInUpBig"

      assert canonical_css_classes(MyComponents.animate_fade_in_up_big(speed: :fast)) ==
          "animate__animated animate__fadeInUpBig animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_in_up_big(speed: :faster)) ==
          "animate__animated animate__fadeInUpBig animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_up_big(repeat: true)) ==
          "animate__animated animate__fadeInUpBig animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_in_up_big(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeInUpBig animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_up_big(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeInUpBig animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_up_big(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeInUpBig animate__faster animate__infinite"
    end

    test "fade in top left animation" do
      assert canonical_css_classes(MyComponents.animate_fade_in_top_left()) ==
          "animate__animated animate__fadeInTopLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_top_left(speed: :normal)) ==
          "animate__animated animate__fadeInTopLeft"

      assert canonical_css_classes(MyComponents.animate_fade_in_top_left(speed: :fast)) ==
          "animate__animated animate__fadeInTopLeft animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_in_top_left(speed: :faster)) ==
          "animate__animated animate__fadeInTopLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_top_left(repeat: true)) ==
          "animate__animated animate__fadeInTopLeft animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_in_top_left(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeInTopLeft animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_top_left(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeInTopLeft animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_top_left(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeInTopLeft animate__faster animate__infinite"
    end

    test "fade in top right animation" do
      assert canonical_css_classes(MyComponents.animate_fade_in_top_right()) ==
          "animate__animated animate__fadeInTopRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_top_right(speed: :normal)) ==
          "animate__animated animate__fadeInTopRight"

      assert canonical_css_classes(MyComponents.animate_fade_in_top_right(speed: :fast)) ==
          "animate__animated animate__fadeInTopRight animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_in_top_right(speed: :faster)) ==
          "animate__animated animate__fadeInTopRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_top_right(repeat: true)) ==
          "animate__animated animate__fadeInTopRight animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_in_top_right(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeInTopRight animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_top_right(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeInTopRight animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_top_right(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeInTopRight animate__faster animate__infinite"
    end

    test "fade in bottom left animation" do
      assert canonical_css_classes(MyComponents.animate_fade_in_bottom_left()) ==
          "animate__animated animate__fadeInBottomLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_bottom_left(speed: :normal)) ==
          "animate__animated animate__fadeInBottomLeft"

      assert canonical_css_classes(MyComponents.animate_fade_in_bottom_left(speed: :fast)) ==
          "animate__animated animate__fadeInBottomLeft animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_in_bottom_left(speed: :faster)) ==
          "animate__animated animate__fadeInBottomLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_bottom_left(repeat: true)) ==
          "animate__animated animate__fadeInBottomLeft animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_in_bottom_left(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeInBottomLeft animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_bottom_left(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeInBottomLeft animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_bottom_left(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeInBottomLeft animate__faster animate__infinite"
    end

    test "fade in bottom right animation" do
      assert canonical_css_classes(MyComponents.animate_fade_in_bottom_right()) ==
          "animate__animated animate__fadeInBottomRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_bottom_right(speed: :normal)) ==
          "animate__animated animate__fadeInBottomRight"

      assert canonical_css_classes(MyComponents.animate_fade_in_bottom_right(speed: :fast)) ==
          "animate__animated animate__fadeInBottomRight animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_in_bottom_right(speed: :faster)) ==
          "animate__animated animate__fadeInBottomRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_in_bottom_right(repeat: true)) ==
          "animate__animated animate__fadeInBottomRight animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_in_bottom_right(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeInBottomRight animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_bottom_right(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeInBottomRight animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_in_bottom_right(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeInBottomRight animate__faster animate__infinite"
    end

    test "fade out animation" do
      assert canonical_css_classes(MyComponents.animate_fade_out()) ==
          "animate__animated animate__fadeOut animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out(speed: :normal)) ==
          "animate__animated animate__fadeOut"

      assert canonical_css_classes(MyComponents.animate_fade_out(speed: :fast)) ==
          "animate__animated animate__fadeOut animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_out(speed: :faster)) ==
          "animate__animated animate__fadeOut animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out(repeat: true)) ==
          "animate__animated animate__fadeOut animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_out(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeOut animate__infinite"

      assert String.trim(MyComponents.animate_fade_out(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeOut animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_out(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeOut animate__faster animate__infinite"
    end

    test "fade out down animation" do
      assert canonical_css_classes(MyComponents.animate_fade_out_down()) ==
          "animate__animated animate__fadeOutDown animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_down(speed: :normal)) ==
          "animate__animated animate__fadeOutDown"

      assert canonical_css_classes(MyComponents.animate_fade_out_down(speed: :fast)) ==
          "animate__animated animate__fadeOutDown animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_out_down(speed: :faster)) ==
          "animate__animated animate__fadeOutDown animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_down(repeat: true)) ==
          "animate__animated animate__fadeOutDown animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_out_down(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeOutDown animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_down(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeOutDown animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_down(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeOutDown animate__faster animate__infinite"
    end

    test "fade out down big animation" do
      assert canonical_css_classes(MyComponents.animate_fade_out_down_big()) ==
          "animate__animated animate__fadeOutDownBig animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_down_big(speed: :normal)) ==
          "animate__animated animate__fadeOutDownBig"

      assert canonical_css_classes(MyComponents.animate_fade_out_down_big(speed: :fast)) ==
          "animate__animated animate__fadeOutDownBig animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_out_down_big(speed: :faster)) ==
          "animate__animated animate__fadeOutDownBig animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_down_big(repeat: true)) ==
          "animate__animated animate__fadeOutDownBig animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_out_down_big(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeOutDownBig animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_down_big(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeOutDownBig animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_down_big(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeOutDownBig animate__faster animate__infinite"
    end

    test "fade out left animation" do
      assert canonical_css_classes(MyComponents.animate_fade_out_left()) ==
          "animate__animated animate__fadeOutLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_left(speed: :normal)) ==
          "animate__animated animate__fadeOutLeft"

      assert canonical_css_classes(MyComponents.animate_fade_out_left(speed: :fast)) ==
          "animate__animated animate__fadeOutLeft animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_out_left(speed: :faster)) ==
          "animate__animated animate__fadeOutLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_left(repeat: true)) ==
          "animate__animated animate__fadeOutLeft animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_out_left(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeOutLeft animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_left(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeOutLeft animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_left(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeOutLeft animate__faster animate__infinite"
    end

    test "fade out left big animation" do
      assert canonical_css_classes(MyComponents.animate_fade_out_left_big()) ==
          "animate__animated animate__fadeOutLeftBig animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_left_big(speed: :normal)) ==
          "animate__animated animate__fadeOutLeftBig"

      assert canonical_css_classes(MyComponents.animate_fade_out_left_big(speed: :fast)) ==
          "animate__animated animate__fadeOutLeftBig animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_out_left_big(speed: :faster)) ==
          "animate__animated animate__fadeOutLeftBig animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_left_big(repeat: true)) ==
          "animate__animated animate__fadeOutLeftBig animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_out_left_big(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeOutLeftBig animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_left_big(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeOutLeftBig animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_left_big(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeOutLeftBig animate__faster animate__infinite"
    end

    test "fade out right animation" do
      assert canonical_css_classes(MyComponents.animate_fade_out_right()) ==
          "animate__animated animate__fadeOutRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_right(speed: :normal)) ==
          "animate__animated animate__fadeOutRight"

      assert canonical_css_classes(MyComponents.animate_fade_out_right(speed: :fast)) ==
          "animate__animated animate__fadeOutRight animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_out_right(speed: :faster)) ==
          "animate__animated animate__fadeOutRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_right(repeat: true)) ==
          "animate__animated animate__fadeOutRight animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_out_right(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeOutRight animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_right(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeOutRight animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_right(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeOutRight animate__faster animate__infinite"
    end

    test "fade out right big animation" do
      assert canonical_css_classes(MyComponents.animate_fade_out_right_big()) ==
          "animate__animated animate__fadeOutRightBig animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_right_big(speed: :normal)) ==
          "animate__animated animate__fadeOutRightBig"

      assert canonical_css_classes(MyComponents.animate_fade_out_right_big(speed: :fast)) ==
          "animate__animated animate__fadeOutRightBig animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_out_right_big(speed: :faster)) ==
          "animate__animated animate__fadeOutRightBig animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_right_big(repeat: true)) ==
          "animate__animated animate__fadeOutRightBig animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_out_right_big(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeOutRightBig animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_right_big(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeOutRightBig animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_right_big(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeOutRightBig animate__faster animate__infinite"
    end

    test "fade out up animation" do
      assert canonical_css_classes(MyComponents.animate_fade_out_up()) ==
          "animate__animated animate__fadeOutUp animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_up(speed: :normal)) ==
          "animate__animated animate__fadeOutUp"

      assert canonical_css_classes(MyComponents.animate_fade_out_up(speed: :fast)) ==
          "animate__animated animate__fadeOutUp animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_out_up(speed: :faster)) ==
          "animate__animated animate__fadeOutUp animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_up(repeat: true)) ==
          "animate__animated animate__fadeOutUp animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_out_up(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeOutUp animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_up(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeOutUp animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_up(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeOutUp animate__faster animate__infinite"
    end

    test "fade out up big animation" do
      assert canonical_css_classes(MyComponents.animate_fade_out_up_big()) ==
          "animate__animated animate__fadeOutUpBig animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_up_big(speed: :normal)) ==
          "animate__animated animate__fadeOutUpBig"

      assert canonical_css_classes(MyComponents.animate_fade_out_up_big(speed: :fast)) ==
          "animate__animated animate__fadeOutUpBig animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_out_up_big(speed: :faster)) ==
          "animate__animated animate__fadeOutUpBig animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_up_big(repeat: true)) ==
          "animate__animated animate__fadeOutUpBig animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_out_up_big(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeOutUpBig animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_up_big(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeOutUpBig animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_up_big(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeOutUpBig animate__faster animate__infinite"
    end

    test "fade out top left animation" do
      assert canonical_css_classes(MyComponents.animate_fade_out_top_left()) ==
          "animate__animated animate__fadeOutTopLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_top_left(speed: :normal)) ==
          "animate__animated animate__fadeOutTopLeft"

      assert canonical_css_classes(MyComponents.animate_fade_out_top_left(speed: :fast)) ==
          "animate__animated animate__fadeOutTopLeft animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_out_top_left(speed: :faster)) ==
          "animate__animated animate__fadeOutTopLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_top_left(repeat: true)) ==
          "animate__animated animate__fadeOutTopLeft animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_out_top_left(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeOutTopLeft animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_top_left(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeOutTopLeft animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_top_left(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeOutTopLeft animate__faster animate__infinite"
    end

    test "fade out top right animation" do
      assert canonical_css_classes(MyComponents.animate_fade_out_top_right()) ==
          "animate__animated animate__fadeOutTopRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_top_right(speed: :normal)) ==
          "animate__animated animate__fadeOutTopRight"

      assert canonical_css_classes(MyComponents.animate_fade_out_top_right(speed: :fast)) ==
          "animate__animated animate__fadeOutTopRight animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_out_top_right(speed: :faster)) ==
          "animate__animated animate__fadeOutTopRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_top_right(repeat: true)) ==
          "animate__animated animate__fadeOutTopRight animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_out_top_right(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeOutTopRight animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_top_right(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeOutTopRight animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_top_right(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeOutTopRight animate__faster animate__infinite"
    end

    test "fade out bottom right animation" do
      assert canonical_css_classes(MyComponents.animate_fade_out_bottom_right()) ==
          "animate__animated animate__fadeOutBottomRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_bottom_right(speed: :normal)) ==
          "animate__animated animate__fadeOutBottomRight"

      assert canonical_css_classes(MyComponents.animate_fade_out_bottom_right(speed: :fast)) ==
          "animate__animated animate__fadeOutBottomRight animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_out_bottom_right(speed: :faster)) ==
          "animate__animated animate__fadeOutBottomRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_bottom_right(repeat: true)) ==
          "animate__animated animate__fadeOutBottomRight animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_out_bottom_right(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeOutBottomRight animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_bottom_right(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeOutBottomRight animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_bottom_right(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeOutBottomRight animate__faster animate__infinite"
    end

    test "fade out bottom left animation" do
      assert canonical_css_classes(MyComponents.animate_fade_out_bottom_left()) ==
          "animate__animated animate__fadeOutBottomLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_bottom_left(speed: :normal)) ==
          "animate__animated animate__fadeOutBottomLeft"

      assert canonical_css_classes(MyComponents.animate_fade_out_bottom_left(speed: :fast)) ==
          "animate__animated animate__fadeOutBottomLeft animate__fast"

      assert canonical_css_classes(MyComponents.animate_fade_out_bottom_left(speed: :faster)) ==
          "animate__animated animate__fadeOutBottomLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_fade_out_bottom_left(repeat: true)) ==
          "animate__animated animate__fadeOutBottomLeft animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_fade_out_bottom_left(speed: :normal, repeat: true)) ==
          "animate__animated animate__fadeOutBottomLeft animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_bottom_left(speed: :fast, repeat: true)) ==
          "animate__animated animate__fadeOutBottomLeft animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_fade_out_bottom_left(speed: :faster, repeat: true)) ==
          "animate__animated animate__fadeOutBottomLeft animate__faster animate__infinite"
    end

    test "flip animation" do
      assert canonical_css_classes(MyComponents.animate_flip()) ==
          "animate__animated animate__flip animate__faster"

      assert canonical_css_classes(MyComponents.animate_flip(speed: :normal)) ==
          "animate__animated animate__flip"

      assert canonical_css_classes(MyComponents.animate_flip(speed: :fast)) ==
          "animate__animated animate__flip animate__fast"

      assert canonical_css_classes(MyComponents.animate_flip(speed: :faster)) ==
          "animate__animated animate__flip animate__faster"

      assert canonical_css_classes(MyComponents.animate_flip(repeat: true)) ==
          "animate__animated animate__flip animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_flip(speed: :normal, repeat: true)) ==
          "animate__animated animate__flip animate__infinite"

      assert String.trim(MyComponents.animate_flip(speed: :fast, repeat: true)) ==
          "animate__animated animate__flip animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_flip(speed: :faster, repeat: true)) ==
          "animate__animated animate__flip animate__faster animate__infinite"
    end

    test "flip in x animation" do
      assert canonical_css_classes(MyComponents.animate_flip_in_x()) ==
          "animate__animated animate__flipInX animate__faster"

      assert canonical_css_classes(MyComponents.animate_flip_in_x(speed: :normal)) ==
          "animate__animated animate__flipInX"

      assert canonical_css_classes(MyComponents.animate_flip_in_x(speed: :fast)) ==
          "animate__animated animate__flipInX animate__fast"

      assert canonical_css_classes(MyComponents.animate_flip_in_x(speed: :faster)) ==
          "animate__animated animate__flipInX animate__faster"

      assert canonical_css_classes(MyComponents.animate_flip_in_x(repeat: true)) ==
          "animate__animated animate__flipInX animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_flip_in_x(speed: :normal, repeat: true)) ==
          "animate__animated animate__flipInX animate__infinite"

      assert String.trim(MyComponents.animate_flip_in_x(speed: :fast, repeat: true)) ==
          "animate__animated animate__flipInX animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_flip_in_x(speed: :faster, repeat: true)) ==
          "animate__animated animate__flipInX animate__faster animate__infinite"
    end

    test "flip in y animation" do
      assert canonical_css_classes(MyComponents.animate_flip_in_y()) ==
          "animate__animated animate__flipInY animate__faster"

      assert canonical_css_classes(MyComponents.animate_flip_in_y(speed: :normal)) ==
          "animate__animated animate__flipInY"

      assert canonical_css_classes(MyComponents.animate_flip_in_y(speed: :fast)) ==
          "animate__animated animate__flipInY animate__fast"

      assert canonical_css_classes(MyComponents.animate_flip_in_y(speed: :faster)) ==
          "animate__animated animate__flipInY animate__faster"

      assert canonical_css_classes(MyComponents.animate_flip_in_y(repeat: true)) ==
          "animate__animated animate__flipInY animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_flip_in_y(speed: :normal, repeat: true)) ==
          "animate__animated animate__flipInY animate__infinite"

      assert String.trim(MyComponents.animate_flip_in_y(speed: :fast, repeat: true)) ==
          "animate__animated animate__flipInY animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_flip_in_y(speed: :faster, repeat: true)) ==
          "animate__animated animate__flipInY animate__faster animate__infinite"
    end

    test "flip out x animation" do
      assert canonical_css_classes(MyComponents.animate_flip_out_x()) ==
          "animate__animated animate__flipOutX animate__faster"

      assert canonical_css_classes(MyComponents.animate_flip_out_x(speed: :normal)) ==
          "animate__animated animate__flipOutX"

      assert canonical_css_classes(MyComponents.animate_flip_out_x(speed: :fast)) ==
          "animate__animated animate__flipOutX animate__fast"

      assert canonical_css_classes(MyComponents.animate_flip_out_x(speed: :faster)) ==
          "animate__animated animate__flipOutX animate__faster"

      assert canonical_css_classes(MyComponents.animate_flip_out_x(repeat: true)) ==
          "animate__animated animate__flipOutX animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_flip_out_x(speed: :normal, repeat: true)) ==
          "animate__animated animate__flipOutX animate__infinite"

      assert String.trim(MyComponents.animate_flip_out_x(speed: :fast, repeat: true)) ==
          "animate__animated animate__flipOutX animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_flip_out_x(speed: :faster, repeat: true)) ==
          "animate__animated animate__flipOutX animate__faster animate__infinite"
    end

    test "flip out y animation" do
      assert canonical_css_classes(MyComponents.animate_flip_out_y()) ==
          "animate__animated animate__flipOutY animate__faster"

      assert canonical_css_classes(MyComponents.animate_flip_out_y(speed: :normal)) ==
          "animate__animated animate__flipOutY"

      assert canonical_css_classes(MyComponents.animate_flip_out_y(speed: :fast)) ==
          "animate__animated animate__flipOutY animate__fast"

      assert canonical_css_classes(MyComponents.animate_flip_out_y(speed: :faster)) ==
          "animate__animated animate__flipOutY animate__faster"

      assert canonical_css_classes(MyComponents.animate_flip_out_y(repeat: true)) ==
          "animate__animated animate__flipOutY animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_flip_out_y(speed: :normal, repeat: true)) ==
          "animate__animated animate__flipOutY animate__infinite"

      assert String.trim(MyComponents.animate_flip_out_y(speed: :fast, repeat: true)) ==
          "animate__animated animate__flipOutY animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_flip_out_y(speed: :faster, repeat: true)) ==
          "animate__animated animate__flipOutY animate__faster animate__infinite"
    end

    test "light speed in right animation" do
      assert canonical_css_classes(MyComponents.animate_light_speed_in_right()) ==
          "animate__animated animate__lightSpeedInRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_light_speed_in_right(speed: :normal)) ==
          "animate__animated animate__lightSpeedInRight"

      assert canonical_css_classes(MyComponents.animate_light_speed_in_right(speed: :fast)) ==
          "animate__animated animate__lightSpeedInRight animate__fast"

      assert canonical_css_classes(MyComponents.animate_light_speed_in_right(speed: :faster)) ==
          "animate__animated animate__lightSpeedInRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_light_speed_in_right(repeat: true)) ==
          "animate__animated animate__lightSpeedInRight animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_light_speed_in_right(speed: :normal, repeat: true)) ==
          "animate__animated animate__lightSpeedInRight animate__infinite"

      assert String.trim(MyComponents.animate_light_speed_in_right(speed: :fast, repeat: true)) ==
          "animate__animated animate__lightSpeedInRight animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_light_speed_in_right(speed: :faster, repeat: true)) ==
          "animate__animated animate__lightSpeedInRight animate__faster animate__infinite"
    end

    test "light speed in left animation" do
      assert canonical_css_classes(MyComponents.animate_light_speed_in_left()) ==
          "animate__animated animate__lightSpeedInLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_light_speed_in_left(speed: :normal)) ==
          "animate__animated animate__lightSpeedInLeft"

      assert canonical_css_classes(MyComponents.animate_light_speed_in_left(speed: :fast)) ==
          "animate__animated animate__lightSpeedInLeft animate__fast"

      assert canonical_css_classes(MyComponents.animate_light_speed_in_left(speed: :faster)) ==
          "animate__animated animate__lightSpeedInLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_light_speed_in_left(repeat: true)) ==
          "animate__animated animate__lightSpeedInLeft animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_light_speed_in_left(speed: :normal, repeat: true)) ==
          "animate__animated animate__lightSpeedInLeft animate__infinite"

      assert String.trim(MyComponents.animate_light_speed_in_left(speed: :fast, repeat: true)) ==
          "animate__animated animate__lightSpeedInLeft animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_light_speed_in_left(speed: :faster, repeat: true)) ==
          "animate__animated animate__lightSpeedInLeft animate__faster animate__infinite"
    end

    test "light speed out right animation" do
      assert canonical_css_classes(MyComponents.animate_light_speed_out_right()) ==
          "animate__animated animate__lightSpeedOutRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_light_speed_out_right(speed: :normal)) ==
          "animate__animated animate__lightSpeedOutRight"

      assert canonical_css_classes(MyComponents.animate_light_speed_out_right(speed: :fast)) ==
          "animate__animated animate__lightSpeedOutRight animate__fast"

      assert canonical_css_classes(MyComponents.animate_light_speed_out_right(speed: :faster)) ==
          "animate__animated animate__lightSpeedOutRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_light_speed_out_right(repeat: true)) ==
          "animate__animated animate__lightSpeedOutRight animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_light_speed_out_right(speed: :normal, repeat: true)) ==
          "animate__animated animate__lightSpeedOutRight animate__infinite"

      assert String.trim(MyComponents.animate_light_speed_out_right(speed: :fast, repeat: true)) ==
          "animate__animated animate__lightSpeedOutRight animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_light_speed_out_right(speed: :faster, repeat: true)) ==
          "animate__animated animate__lightSpeedOutRight animate__faster animate__infinite"
    end

    test "light speed out left animation" do
      assert canonical_css_classes(MyComponents.animate_light_speed_out_left()) ==
          "animate__animated animate__lightSpeedOutLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_light_speed_out_left(speed: :normal)) ==
          "animate__animated animate__lightSpeedOutLeft"

      assert canonical_css_classes(MyComponents.animate_light_speed_out_left(speed: :fast)) ==
          "animate__animated animate__lightSpeedOutLeft animate__fast"

      assert canonical_css_classes(MyComponents.animate_light_speed_out_left(speed: :faster)) ==
          "animate__animated animate__lightSpeedOutLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_light_speed_out_left(repeat: true)) ==
          "animate__animated animate__lightSpeedOutLeft animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_light_speed_out_left(speed: :normal, repeat: true)) ==
          "animate__animated animate__lightSpeedOutLeft animate__infinite"

      assert String.trim(MyComponents.animate_light_speed_out_left(speed: :fast, repeat: true)) ==
          "animate__animated animate__lightSpeedOutLeft animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_light_speed_out_left(speed: :faster, repeat: true)) ==
          "animate__animated animate__lightSpeedOutLeft animate__faster animate__infinite"
    end

    test "rotate in animation" do
      assert canonical_css_classes(MyComponents.animate_rotate_in()) ==
          "animate__animated animate__rotateIn animate__faster"

      assert canonical_css_classes(MyComponents.animate_rotate_in(speed: :normal)) ==
          "animate__animated animate__rotateIn"

      assert canonical_css_classes(MyComponents.animate_rotate_in(speed: :fast)) ==
          "animate__animated animate__rotateIn animate__fast"

      assert canonical_css_classes(MyComponents.animate_rotate_in(speed: :faster)) ==
          "animate__animated animate__rotateIn animate__faster"

      assert canonical_css_classes(MyComponents.animate_rotate_in(repeat: true)) ==
          "animate__animated animate__rotateIn animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_rotate_in(speed: :normal, repeat: true)) ==
          "animate__animated animate__rotateIn animate__infinite"

      assert String.trim(MyComponents.animate_rotate_in(speed: :fast, repeat: true)) ==
          "animate__animated animate__rotateIn animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_rotate_in(speed: :faster, repeat: true)) ==
          "animate__animated animate__rotateIn animate__faster animate__infinite"
    end

    test "rotate in down left animation" do
      assert canonical_css_classes(MyComponents.animate_rotate_in_down_left()) ==
          "animate__animated animate__rotateInDownLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_rotate_in_down_left(speed: :normal)) ==
          "animate__animated animate__rotateInDownLeft"

      assert canonical_css_classes(MyComponents.animate_rotate_in_down_left(speed: :fast)) ==
          "animate__animated animate__rotateInDownLeft animate__fast"

      assert canonical_css_classes(MyComponents.animate_rotate_in_down_left(speed: :faster)) ==
          "animate__animated animate__rotateInDownLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_rotate_in_down_left(repeat: true)) ==
          "animate__animated animate__rotateInDownLeft animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_rotate_in_down_left(speed: :normal, repeat: true)) ==
          "animate__animated animate__rotateInDownLeft animate__infinite"

      assert String.trim(MyComponents.animate_rotate_in_down_left(speed: :fast, repeat: true)) ==
          "animate__animated animate__rotateInDownLeft animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_rotate_in_down_left(speed: :faster, repeat: true)) ==
          "animate__animated animate__rotateInDownLeft animate__faster animate__infinite"
    end

    test "rotate in down right animation" do
      assert canonical_css_classes(MyComponents.animate_rotate_in_down_right()) ==
          "animate__animated animate__rotateInDownRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_rotate_in_down_right(speed: :normal)) ==
          "animate__animated animate__rotateInDownRight"

      assert canonical_css_classes(MyComponents.animate_rotate_in_down_right(speed: :fast)) ==
          "animate__animated animate__rotateInDownRight animate__fast"

      assert canonical_css_classes(MyComponents.animate_rotate_in_down_right(speed: :faster)) ==
          "animate__animated animate__rotateInDownRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_rotate_in_down_right(repeat: true)) ==
          "animate__animated animate__rotateInDownRight animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_rotate_in_down_right(speed: :normal, repeat: true)) ==
          "animate__animated animate__rotateInDownRight animate__infinite"

      assert String.trim(MyComponents.animate_rotate_in_down_right(speed: :fast, repeat: true)) ==
          "animate__animated animate__rotateInDownRight animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_rotate_in_down_right(speed: :faster, repeat: true)) ==
          "animate__animated animate__rotateInDownRight animate__faster animate__infinite"
    end

    test "rotate in up left animation" do
      assert canonical_css_classes(MyComponents.animate_rotate_in_up_left()) ==
          "animate__animated animate__rotateInUpLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_rotate_in_up_left(speed: :normal)) ==
          "animate__animated animate__rotateInUpLeft"

      assert canonical_css_classes(MyComponents.animate_rotate_in_up_left(speed: :fast)) ==
          "animate__animated animate__rotateInUpLeft animate__fast"

      assert canonical_css_classes(MyComponents.animate_rotate_in_up_left(speed: :faster)) ==
          "animate__animated animate__rotateInUpLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_rotate_in_up_left(repeat: true)) ==
          "animate__animated animate__rotateInUpLeft animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_rotate_in_up_left(speed: :normal, repeat: true)) ==
          "animate__animated animate__rotateInUpLeft animate__infinite"

      assert String.trim(MyComponents.animate_rotate_in_up_left(speed: :fast, repeat: true)) ==
          "animate__animated animate__rotateInUpLeft animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_rotate_in_up_left(speed: :faster, repeat: true)) ==
          "animate__animated animate__rotateInUpLeft animate__faster animate__infinite"
    end

    test "rotate in up right animation" do
      assert canonical_css_classes(MyComponents.animate_rotate_in_up_right()) ==
          "animate__animated animate__rotateInUpRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_rotate_in_up_right(speed: :normal)) ==
          "animate__animated animate__rotateInUpRight"

      assert canonical_css_classes(MyComponents.animate_rotate_in_up_right(speed: :fast)) ==
          "animate__animated animate__rotateInUpRight animate__fast"

      assert canonical_css_classes(MyComponents.animate_rotate_in_up_right(speed: :faster)) ==
          "animate__animated animate__rotateInUpRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_rotate_in_up_right(repeat: true)) ==
          "animate__animated animate__rotateInUpRight animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_rotate_in_up_right(speed: :normal, repeat: true)) ==
          "animate__animated animate__rotateInUpRight animate__infinite"

      assert String.trim(MyComponents.animate_rotate_in_up_right(speed: :fast, repeat: true)) ==
          "animate__animated animate__rotateInUpRight animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_rotate_in_up_right(speed: :faster, repeat: true)) ==
          "animate__animated animate__rotateInUpRight animate__faster animate__infinite"
    end

    test "rotate out animation" do
      assert canonical_css_classes(MyComponents.animate_rotate_out()) ==
          "animate__animated animate__rotateOut animate__faster"

      assert canonical_css_classes(MyComponents.animate_rotate_out(speed: :normal)) ==
          "animate__animated animate__rotateOut"

      assert canonical_css_classes(MyComponents.animate_rotate_out(speed: :fast)) ==
          "animate__animated animate__rotateOut animate__fast"

      assert canonical_css_classes(MyComponents.animate_rotate_out(speed: :faster)) ==
          "animate__animated animate__rotateOut animate__faster"

      assert canonical_css_classes(MyComponents.animate_rotate_out(repeat: true)) ==
          "animate__animated animate__rotateOut animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_rotate_out(speed: :normal, repeat: true)) ==
          "animate__animated animate__rotateOut animate__infinite"

      assert String.trim(MyComponents.animate_rotate_out(speed: :fast, repeat: true)) ==
          "animate__animated animate__rotateOut animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_rotate_out(speed: :faster, repeat: true)) ==
          "animate__animated animate__rotateOut animate__faster animate__infinite"
    end

    test "rotate out down left animation" do
      assert canonical_css_classes(MyComponents.animate_rotate_out_down_left()) ==
          "animate__animated animate__rotateOutDownLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_rotate_out_down_left(speed: :normal)) ==
          "animate__animated animate__rotateOutDownLeft"

      assert canonical_css_classes(MyComponents.animate_rotate_out_down_left(speed: :fast)) ==
          "animate__animated animate__rotateOutDownLeft animate__fast"

      assert canonical_css_classes(MyComponents.animate_rotate_out_down_left(speed: :faster)) ==
          "animate__animated animate__rotateOutDownLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_rotate_out_down_left(repeat: true)) ==
          "animate__animated animate__rotateOutDownLeft animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_rotate_out_down_left(speed: :normal, repeat: true)) ==
          "animate__animated animate__rotateOutDownLeft animate__infinite"

      assert String.trim(MyComponents.animate_rotate_out_down_left(speed: :fast, repeat: true)) ==
          "animate__animated animate__rotateOutDownLeft animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_rotate_out_down_left(speed: :faster, repeat: true)) ==
          "animate__animated animate__rotateOutDownLeft animate__faster animate__infinite"
    end

    test "rotate out down right animation" do
      assert canonical_css_classes(MyComponents.animate_rotate_out_down_right()) ==
          "animate__animated animate__rotateOutDownRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_rotate_out_down_right(speed: :normal)) ==
          "animate__animated animate__rotateOutDownRight"

      assert canonical_css_classes(MyComponents.animate_rotate_out_down_right(speed: :fast)) ==
          "animate__animated animate__rotateOutDownRight animate__fast"

      assert canonical_css_classes(MyComponents.animate_rotate_out_down_right(speed: :faster)) ==
          "animate__animated animate__rotateOutDownRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_rotate_out_down_right(repeat: true)) ==
          "animate__animated animate__rotateOutDownRight animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_rotate_out_down_right(speed: :normal, repeat: true)) ==
          "animate__animated animate__rotateOutDownRight animate__infinite"

      assert String.trim(MyComponents.animate_rotate_out_down_right(speed: :fast, repeat: true)) ==
          "animate__animated animate__rotateOutDownRight animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_rotate_out_down_right(speed: :faster, repeat: true)) ==
          "animate__animated animate__rotateOutDownRight animate__faster animate__infinite"
    end

    test "rotate out up left animation" do
      assert canonical_css_classes(MyComponents.animate_rotate_out_up_left()) ==
          "animate__animated animate__rotateOutUpLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_rotate_out_up_left(speed: :normal)) ==
          "animate__animated animate__rotateOutUpLeft"

      assert canonical_css_classes(MyComponents.animate_rotate_out_up_left(speed: :fast)) ==
          "animate__animated animate__rotateOutUpLeft animate__fast"

      assert canonical_css_classes(MyComponents.animate_rotate_out_up_left(speed: :faster)) ==
          "animate__animated animate__rotateOutUpLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_rotate_out_up_left(repeat: true)) ==
          "animate__animated animate__rotateOutUpLeft animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_rotate_out_up_left(speed: :normal, repeat: true)) ==
          "animate__animated animate__rotateOutUpLeft animate__infinite"

      assert String.trim(MyComponents.animate_rotate_out_up_left(speed: :fast, repeat: true)) ==
          "animate__animated animate__rotateOutUpLeft animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_rotate_out_up_left(speed: :faster, repeat: true)) ==
          "animate__animated animate__rotateOutUpLeft animate__faster animate__infinite"
    end

    test "rotate out up right animation" do
      assert canonical_css_classes(MyComponents.animate_rotate_out_up_right()) ==
          "animate__animated animate__rotateOutUpRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_rotate_out_up_right(speed: :normal)) ==
          "animate__animated animate__rotateOutUpRight"

      assert canonical_css_classes(MyComponents.animate_rotate_out_up_right(speed: :fast)) ==
          "animate__animated animate__rotateOutUpRight animate__fast"

      assert canonical_css_classes(MyComponents.animate_rotate_out_up_right(speed: :faster)) ==
          "animate__animated animate__rotateOutUpRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_rotate_out_up_right(repeat: true)) ==
          "animate__animated animate__rotateOutUpRight animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_rotate_out_up_right(speed: :normal, repeat: true)) ==
          "animate__animated animate__rotateOutUpRight animate__infinite"

      assert String.trim(MyComponents.animate_rotate_out_up_right(speed: :fast, repeat: true)) ==
          "animate__animated animate__rotateOutUpRight animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_rotate_out_up_right(speed: :faster, repeat: true)) ==
          "animate__animated animate__rotateOutUpRight animate__faster animate__infinite"
    end

    test "hinge animation" do
      assert canonical_css_classes(MyComponents.animate_hinge()) ==
          "animate__animated animate__hinge animate__faster"

      assert canonical_css_classes(MyComponents.animate_hinge(speed: :normal)) ==
          "animate__animated animate__hinge"

      assert canonical_css_classes(MyComponents.animate_hinge(speed: :fast)) ==
          "animate__animated animate__hinge animate__fast"

      assert canonical_css_classes(MyComponents.animate_hinge(speed: :faster)) ==
          "animate__animated animate__hinge animate__faster"

      assert canonical_css_classes(MyComponents.animate_hinge(repeat: true)) ==
          "animate__animated animate__hinge animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_hinge(speed: :normal, repeat: true)) ==
          "animate__animated animate__hinge animate__infinite"

      assert String.trim(MyComponents.animate_hinge(speed: :fast, repeat: true)) ==
          "animate__animated animate__hinge animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_hinge(speed: :faster, repeat: true)) ==
          "animate__animated animate__hinge animate__faster animate__infinite"
    end

    test "jack in the box animation" do
      assert canonical_css_classes(MyComponents.animate_jack_in_the_box()) ==
          "animate__animated animate__jackInTheBox animate__faster"

      assert canonical_css_classes(MyComponents.animate_jack_in_the_box(speed: :normal)) ==
          "animate__animated animate__jackInTheBox"

      assert canonical_css_classes(MyComponents.animate_jack_in_the_box(speed: :fast)) ==
          "animate__animated animate__jackInTheBox animate__fast"

      assert canonical_css_classes(MyComponents.animate_jack_in_the_box(speed: :faster)) ==
          "animate__animated animate__jackInTheBox animate__faster"

      assert canonical_css_classes(MyComponents.animate_jack_in_the_box(repeat: true)) ==
          "animate__animated animate__jackInTheBox animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_jack_in_the_box(speed: :normal, repeat: true)) ==
          "animate__animated animate__jackInTheBox animate__infinite"

      assert String.trim(MyComponents.animate_jack_in_the_box(speed: :fast, repeat: true)) ==
          "animate__animated animate__jackInTheBox animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_jack_in_the_box(speed: :faster, repeat: true)) ==
          "animate__animated animate__jackInTheBox animate__faster animate__infinite"
    end

    test "roll in animation" do
      assert canonical_css_classes(MyComponents.animate_roll_in()) ==
          "animate__animated animate__rollIn animate__faster"

      assert canonical_css_classes(MyComponents.animate_roll_in(speed: :normal)) ==
          "animate__animated animate__rollIn"

      assert canonical_css_classes(MyComponents.animate_roll_in(speed: :fast)) ==
          "animate__animated animate__rollIn animate__fast"

      assert canonical_css_classes(MyComponents.animate_roll_in(speed: :faster)) ==
          "animate__animated animate__rollIn animate__faster"

      assert canonical_css_classes(MyComponents.animate_roll_in(repeat: true)) ==
          "animate__animated animate__rollIn animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_roll_in(speed: :normal, repeat: true)) ==
          "animate__animated animate__rollIn animate__infinite"

      assert String.trim(MyComponents.animate_roll_in(speed: :fast, repeat: true)) ==
          "animate__animated animate__rollIn animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_roll_in(speed: :faster, repeat: true)) ==
          "animate__animated animate__rollIn animate__faster animate__infinite"
    end

    test "roll out animation" do
      assert canonical_css_classes(MyComponents.animate_roll_out()) ==
          "animate__animated animate__rollOut animate__faster"

      assert canonical_css_classes(MyComponents.animate_roll_out(speed: :normal)) ==
          "animate__animated animate__rollOut"

      assert canonical_css_classes(MyComponents.animate_roll_out(speed: :fast)) ==
          "animate__animated animate__rollOut animate__fast"

      assert canonical_css_classes(MyComponents.animate_roll_out(speed: :faster)) ==
          "animate__animated animate__rollOut animate__faster"

      assert canonical_css_classes(MyComponents.animate_roll_out(repeat: true)) ==
          "animate__animated animate__rollOut animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_roll_out(speed: :normal, repeat: true)) ==
          "animate__animated animate__rollOut animate__infinite"

      assert String.trim(MyComponents.animate_roll_out(speed: :fast, repeat: true)) ==
          "animate__animated animate__rollOut animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_roll_out(speed: :faster, repeat: true)) ==
          "animate__animated animate__rollOut animate__faster animate__infinite"
    end

    test "zoom in animation" do
      assert canonical_css_classes(MyComponents.animate_zoom_in()) ==
          "animate__animated animate__zoomIn animate__faster"

      assert canonical_css_classes(MyComponents.animate_zoom_in(speed: :normal)) ==
          "animate__animated animate__zoomIn"

      assert canonical_css_classes(MyComponents.animate_zoom_in(speed: :fast)) ==
          "animate__animated animate__zoomIn animate__fast"

      assert canonical_css_classes(MyComponents.animate_zoom_in(speed: :faster)) ==
          "animate__animated animate__zoomIn animate__faster"

      assert canonical_css_classes(MyComponents.animate_zoom_in(repeat: true)) ==
          "animate__animated animate__zoomIn animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_zoom_in(speed: :normal, repeat: true)) ==
          "animate__animated animate__zoomIn animate__infinite"

      assert String.trim(MyComponents.animate_zoom_in(speed: :fast, repeat: true)) ==
          "animate__animated animate__zoomIn animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_zoom_in(speed: :faster, repeat: true)) ==
          "animate__animated animate__zoomIn animate__faster animate__infinite"
    end

    test "zoom in down animation" do
      assert canonical_css_classes(MyComponents.animate_zoom_in_down()) ==
          "animate__animated animate__zoomInDown animate__faster"

      assert canonical_css_classes(MyComponents.animate_zoom_in_down(speed: :normal)) ==
          "animate__animated animate__zoomInDown"

      assert canonical_css_classes(MyComponents.animate_zoom_in_down(speed: :fast)) ==
          "animate__animated animate__zoomInDown animate__fast"

      assert canonical_css_classes(MyComponents.animate_zoom_in_down(speed: :faster)) ==
          "animate__animated animate__zoomInDown animate__faster"

      assert canonical_css_classes(MyComponents.animate_zoom_in_down(repeat: true)) ==
          "animate__animated animate__zoomInDown animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_zoom_in_down(speed: :normal, repeat: true)) ==
          "animate__animated animate__zoomInDown animate__infinite"

      assert String.trim(MyComponents.animate_zoom_in_down(speed: :fast, repeat: true)) ==
          "animate__animated animate__zoomInDown animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_zoom_in_down(speed: :faster, repeat: true)) ==
          "animate__animated animate__zoomInDown animate__faster animate__infinite"
    end

    test "zoom in left animation" do
      assert canonical_css_classes(MyComponents.animate_zoom_in_left()) ==
          "animate__animated animate__zoomInLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_zoom_in_left(speed: :normal)) ==
          "animate__animated animate__zoomInLeft"

      assert canonical_css_classes(MyComponents.animate_zoom_in_left(speed: :fast)) ==
          "animate__animated animate__zoomInLeft animate__fast"

      assert canonical_css_classes(MyComponents.animate_zoom_in_left(speed: :faster)) ==
          "animate__animated animate__zoomInLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_zoom_in_left(repeat: true)) ==
          "animate__animated animate__zoomInLeft animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_zoom_in_left(speed: :normal, repeat: true)) ==
          "animate__animated animate__zoomInLeft animate__infinite"

      assert String.trim(MyComponents.animate_zoom_in_left(speed: :fast, repeat: true)) ==
          "animate__animated animate__zoomInLeft animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_zoom_in_left(speed: :faster, repeat: true)) ==
          "animate__animated animate__zoomInLeft animate__faster animate__infinite"
    end

    test "zoom in right animation" do
      assert canonical_css_classes(MyComponents.animate_zoom_in_right()) ==
          "animate__animated animate__zoomInRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_zoom_in_right(speed: :normal)) ==
          "animate__animated animate__zoomInRight"

      assert canonical_css_classes(MyComponents.animate_zoom_in_right(speed: :fast)) ==
          "animate__animated animate__zoomInRight animate__fast"

      assert canonical_css_classes(MyComponents.animate_zoom_in_right(speed: :faster)) ==
          "animate__animated animate__zoomInRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_zoom_in_right(repeat: true)) ==
          "animate__animated animate__zoomInRight animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_zoom_in_right(speed: :normal, repeat: true)) ==
          "animate__animated animate__zoomInRight animate__infinite"

      assert String.trim(MyComponents.animate_zoom_in_right(speed: :fast, repeat: true)) ==
          "animate__animated animate__zoomInRight animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_zoom_in_right(speed: :faster, repeat: true)) ==
          "animate__animated animate__zoomInRight animate__faster animate__infinite"
    end

    test "zoom in up animation" do
      assert canonical_css_classes(MyComponents.animate_zoom_in_up()) ==
          "animate__animated animate__zoomInUp animate__faster"

      assert canonical_css_classes(MyComponents.animate_zoom_in_up(speed: :normal)) ==
          "animate__animated animate__zoomInUp"

      assert canonical_css_classes(MyComponents.animate_zoom_in_up(speed: :fast)) ==
          "animate__animated animate__zoomInUp animate__fast"

      assert canonical_css_classes(MyComponents.animate_zoom_in_up(speed: :faster)) ==
          "animate__animated animate__zoomInUp animate__faster"

      assert canonical_css_classes(MyComponents.animate_zoom_in_up(repeat: true)) ==
          "animate__animated animate__zoomInUp animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_zoom_in_up(speed: :normal, repeat: true)) ==
          "animate__animated animate__zoomInUp animate__infinite"

      assert String.trim(MyComponents.animate_zoom_in_up(speed: :fast, repeat: true)) ==
          "animate__animated animate__zoomInUp animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_zoom_in_up(speed: :faster, repeat: true)) ==
          "animate__animated animate__zoomInUp animate__faster animate__infinite"
    end

    test "zoom out animation" do
      assert canonical_css_classes(MyComponents.animate_zoom_out()) ==
          "animate__animated animate__zoomOut animate__faster"

      assert canonical_css_classes(MyComponents.animate_zoom_out(speed: :normal)) ==
          "animate__animated animate__zoomOut"

      assert canonical_css_classes(MyComponents.animate_zoom_out(speed: :fast)) ==
          "animate__animated animate__zoomOut animate__fast"

      assert canonical_css_classes(MyComponents.animate_zoom_out(speed: :faster)) ==
          "animate__animated animate__zoomOut animate__faster"

      assert canonical_css_classes(MyComponents.animate_zoom_out(repeat: true)) ==
          "animate__animated animate__zoomOut animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_zoom_out(speed: :normal, repeat: true)) ==
          "animate__animated animate__zoomOut animate__infinite"

      assert String.trim(MyComponents.animate_zoom_out(speed: :fast, repeat: true)) ==
          "animate__animated animate__zoomOut animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_zoom_out(speed: :faster, repeat: true)) ==
          "animate__animated animate__zoomOut animate__faster animate__infinite"
    end

    test "zoom out down animation" do
      assert canonical_css_classes(MyComponents.animate_zoom_out_down()) ==
          "animate__animated animate__zoomOutDown animate__faster"

      assert canonical_css_classes(MyComponents.animate_zoom_out_down(speed: :normal)) ==
          "animate__animated animate__zoomOutDown"

      assert canonical_css_classes(MyComponents.animate_zoom_out_down(speed: :fast)) ==
          "animate__animated animate__zoomOutDown animate__fast"

      assert canonical_css_classes(MyComponents.animate_zoom_out_down(speed: :faster)) ==
          "animate__animated animate__zoomOutDown animate__faster"

      assert canonical_css_classes(MyComponents.animate_zoom_out_down(repeat: true)) ==
          "animate__animated animate__zoomOutDown animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_zoom_out_down(speed: :normal, repeat: true)) ==
          "animate__animated animate__zoomOutDown animate__infinite"

      assert String.trim(MyComponents.animate_zoom_out_down(speed: :fast, repeat: true)) ==
          "animate__animated animate__zoomOutDown animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_zoom_out_down(speed: :faster, repeat: true)) ==
          "animate__animated animate__zoomOutDown animate__faster animate__infinite"
    end

    test "zoom out left animation" do
      assert canonical_css_classes(MyComponents.animate_zoom_out_left()) ==
          "animate__animated animate__zoomOutLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_zoom_out_left(speed: :normal)) ==
          "animate__animated animate__zoomOutLeft"

      assert canonical_css_classes(MyComponents.animate_zoom_out_left(speed: :fast)) ==
          "animate__animated animate__zoomOutLeft animate__fast"

      assert canonical_css_classes(MyComponents.animate_zoom_out_left(speed: :faster)) ==
          "animate__animated animate__zoomOutLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_zoom_out_left(repeat: true)) ==
          "animate__animated animate__zoomOutLeft animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_zoom_out_left(speed: :normal, repeat: true)) ==
          "animate__animated animate__zoomOutLeft animate__infinite"

      assert String.trim(MyComponents.animate_zoom_out_left(speed: :fast, repeat: true)) ==
          "animate__animated animate__zoomOutLeft animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_zoom_out_left(speed: :faster, repeat: true)) ==
          "animate__animated animate__zoomOutLeft animate__faster animate__infinite"
    end

    test "zoom out right animation" do
      assert canonical_css_classes(MyComponents.animate_zoom_out_right()) ==
          "animate__animated animate__zoomOutRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_zoom_out_right(speed: :normal)) ==
          "animate__animated animate__zoomOutRight"

      assert canonical_css_classes(MyComponents.animate_zoom_out_right(speed: :fast)) ==
          "animate__animated animate__zoomOutRight animate__fast"

      assert canonical_css_classes(MyComponents.animate_zoom_out_right(speed: :faster)) ==
          "animate__animated animate__zoomOutRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_zoom_out_right(repeat: true)) ==
          "animate__animated animate__zoomOutRight animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_zoom_out_right(speed: :normal, repeat: true)) ==
          "animate__animated animate__zoomOutRight animate__infinite"

      assert String.trim(MyComponents.animate_zoom_out_right(speed: :fast, repeat: true)) ==
          "animate__animated animate__zoomOutRight animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_zoom_out_right(speed: :faster, repeat: true)) ==
          "animate__animated animate__zoomOutRight animate__faster animate__infinite"
    end

    test "zoom out up animation" do
      assert canonical_css_classes(MyComponents.animate_zoom_out_up()) ==
          "animate__animated animate__zoomOutUp animate__faster"

      assert canonical_css_classes(MyComponents.animate_zoom_out_up(speed: :normal)) ==
          "animate__animated animate__zoomOutUp"

      assert canonical_css_classes(MyComponents.animate_zoom_out_up(speed: :fast)) ==
          "animate__animated animate__zoomOutUp animate__fast"

      assert canonical_css_classes(MyComponents.animate_zoom_out_up(speed: :faster)) ==
          "animate__animated animate__zoomOutUp animate__faster"

      assert canonical_css_classes(MyComponents.animate_zoom_out_up(repeat: true)) ==
          "animate__animated animate__zoomOutUp animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_zoom_out_up(speed: :normal, repeat: true)) ==
          "animate__animated animate__zoomOutUp animate__infinite"

      assert String.trim(MyComponents.animate_zoom_out_up(speed: :fast, repeat: true)) ==
          "animate__animated animate__zoomOutUp animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_zoom_out_up(speed: :faster, repeat: true)) ==
          "animate__animated animate__zoomOutUp animate__faster animate__infinite"
    end

    test "slide in down animation" do
      assert canonical_css_classes(MyComponents.animate_slide_in_down()) ==
          "animate__animated animate__slideInDown animate__faster"

      assert canonical_css_classes(MyComponents.animate_slide_in_down(speed: :normal)) ==
          "animate__animated animate__slideInDown"

      assert canonical_css_classes(MyComponents.animate_slide_in_down(speed: :fast)) ==
          "animate__animated animate__slideInDown animate__fast"

      assert canonical_css_classes(MyComponents.animate_slide_in_down(speed: :faster)) ==
          "animate__animated animate__slideInDown animate__faster"

      assert canonical_css_classes(MyComponents.animate_slide_in_down(repeat: true)) ==
          "animate__animated animate__slideInDown animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_slide_in_down(speed: :normal, repeat: true)) ==
          "animate__animated animate__slideInDown animate__infinite"

      assert String.trim(MyComponents.animate_slide_in_down(speed: :fast, repeat: true)) ==
          "animate__animated animate__slideInDown animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_slide_in_down(speed: :faster, repeat: true)) ==
          "animate__animated animate__slideInDown animate__faster animate__infinite"
    end

    test "slide in left animation" do
      assert canonical_css_classes(MyComponents.animate_slide_in_left()) ==
          "animate__animated animate__slideInLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_slide_in_left(speed: :normal)) ==
          "animate__animated animate__slideInLeft"

      assert canonical_css_classes(MyComponents.animate_slide_in_left(speed: :fast)) ==
          "animate__animated animate__slideInLeft animate__fast"

      assert canonical_css_classes(MyComponents.animate_slide_in_left(speed: :faster)) ==
          "animate__animated animate__slideInLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_slide_in_left(repeat: true)) ==
          "animate__animated animate__slideInLeft animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_slide_in_left(speed: :normal, repeat: true)) ==
          "animate__animated animate__slideInLeft animate__infinite"

      assert String.trim(MyComponents.animate_slide_in_left(speed: :fast, repeat: true)) ==
          "animate__animated animate__slideInLeft animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_slide_in_left(speed: :faster, repeat: true)) ==
          "animate__animated animate__slideInLeft animate__faster animate__infinite"
    end

    test "slide in right animation" do
      assert canonical_css_classes(MyComponents.animate_slide_in_right()) ==
          "animate__animated animate__slideInRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_slide_in_right(speed: :normal)) ==
          "animate__animated animate__slideInRight"

      assert canonical_css_classes(MyComponents.animate_slide_in_right(speed: :fast)) ==
          "animate__animated animate__slideInRight animate__fast"

      assert canonical_css_classes(MyComponents.animate_slide_in_right(speed: :faster)) ==
          "animate__animated animate__slideInRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_slide_in_right(repeat: true)) ==
          "animate__animated animate__slideInRight animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_slide_in_right(speed: :normal, repeat: true)) ==
          "animate__animated animate__slideInRight animate__infinite"

      assert String.trim(MyComponents.animate_slide_in_right(speed: :fast, repeat: true)) ==
          "animate__animated animate__slideInRight animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_slide_in_right(speed: :faster, repeat: true)) ==
          "animate__animated animate__slideInRight animate__faster animate__infinite"
    end

    test "slide in up animation" do
      assert canonical_css_classes(MyComponents.animate_slide_in_up()) ==
          "animate__animated animate__slideInUp animate__faster"

      assert canonical_css_classes(MyComponents.animate_slide_in_up(speed: :normal)) ==
          "animate__animated animate__slideInUp"

      assert canonical_css_classes(MyComponents.animate_slide_in_up(speed: :fast)) ==
          "animate__animated animate__slideInUp animate__fast"

      assert canonical_css_classes(MyComponents.animate_slide_in_up(speed: :faster)) ==
          "animate__animated animate__slideInUp animate__faster"

      assert canonical_css_classes(MyComponents.animate_slide_in_up(repeat: true)) ==
          "animate__animated animate__slideInUp animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_slide_in_up(speed: :normal, repeat: true)) ==
          "animate__animated animate__slideInUp animate__infinite"

      assert String.trim(MyComponents.animate_slide_in_up(speed: :fast, repeat: true)) ==
          "animate__animated animate__slideInUp animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_slide_in_up(speed: :faster, repeat: true)) ==
          "animate__animated animate__slideInUp animate__faster animate__infinite"
    end

    test "slide out down animation" do
      assert canonical_css_classes(MyComponents.animate_slide_out_down()) ==
          "animate__animated animate__slideOutDown animate__faster"

      assert canonical_css_classes(MyComponents.animate_slide_out_down(speed: :normal)) ==
          "animate__animated animate__slideOutDown"

      assert canonical_css_classes(MyComponents.animate_slide_out_down(speed: :fast)) ==
          "animate__animated animate__slideOutDown animate__fast"

      assert canonical_css_classes(MyComponents.animate_slide_out_down(speed: :faster)) ==
          "animate__animated animate__slideOutDown animate__faster"

      assert canonical_css_classes(MyComponents.animate_slide_out_down(repeat: true)) ==
          "animate__animated animate__slideOutDown animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_slide_out_down(speed: :normal, repeat: true)) ==
          "animate__animated animate__slideOutDown animate__infinite"

      assert String.trim(MyComponents.animate_slide_out_down(speed: :fast, repeat: true)) ==
          "animate__animated animate__slideOutDown animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_slide_out_down(speed: :faster, repeat: true)) ==
          "animate__animated animate__slideOutDown animate__faster animate__infinite"
    end

    test "slide out left animation" do
      assert canonical_css_classes(MyComponents.animate_slide_out_left()) ==
          "animate__animated animate__slideOutLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_slide_out_left(speed: :normal)) ==
          "animate__animated animate__slideOutLeft"

      assert canonical_css_classes(MyComponents.animate_slide_out_left(speed: :fast)) ==
          "animate__animated animate__slideOutLeft animate__fast"

      assert canonical_css_classes(MyComponents.animate_slide_out_left(speed: :faster)) ==
          "animate__animated animate__slideOutLeft animate__faster"

      assert canonical_css_classes(MyComponents.animate_slide_out_left(repeat: true)) ==
          "animate__animated animate__slideOutLeft animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_slide_out_left(speed: :normal, repeat: true)) ==
          "animate__animated animate__slideOutLeft animate__infinite"

      assert String.trim(MyComponents.animate_slide_out_left(speed: :fast, repeat: true)) ==
          "animate__animated animate__slideOutLeft animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_slide_out_left(speed: :faster, repeat: true)) ==
          "animate__animated animate__slideOutLeft animate__faster animate__infinite"
    end

    test "slide out right animation" do
      assert canonical_css_classes(MyComponents.animate_slide_out_right()) ==
          "animate__animated animate__slideOutRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_slide_out_right(speed: :normal)) ==
          "animate__animated animate__slideOutRight"

      assert canonical_css_classes(MyComponents.animate_slide_out_right(speed: :fast)) ==
          "animate__animated animate__slideOutRight animate__fast"

      assert canonical_css_classes(MyComponents.animate_slide_out_right(speed: :faster)) ==
          "animate__animated animate__slideOutRight animate__faster"

      assert canonical_css_classes(MyComponents.animate_slide_out_right(repeat: true)) ==
          "animate__animated animate__slideOutRight animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_slide_out_right(speed: :normal, repeat: true)) ==
          "animate__animated animate__slideOutRight animate__infinite"

      assert String.trim(MyComponents.animate_slide_out_right(speed: :fast, repeat: true)) ==
          "animate__animated animate__slideOutRight animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_slide_out_right(speed: :faster, repeat: true)) ==
          "animate__animated animate__slideOutRight animate__faster animate__infinite"
    end

    test "slide out up animation" do
      assert canonical_css_classes(MyComponents.animate_slide_out_up()) ==
          "animate__animated animate__slideOutUp animate__faster"

      assert canonical_css_classes(MyComponents.animate_slide_out_up(speed: :normal)) ==
          "animate__animated animate__slideOutUp"

      assert canonical_css_classes(MyComponents.animate_slide_out_up(speed: :fast)) ==
          "animate__animated animate__slideOutUp animate__fast"

      assert canonical_css_classes(MyComponents.animate_slide_out_up(speed: :faster)) ==
          "animate__animated animate__slideOutUp animate__faster"

      assert canonical_css_classes(MyComponents.animate_slide_out_up(repeat: true)) ==
          "animate__animated animate__slideOutUp animate__faster animate__infinite"

      assert canonical_css_classes(MyComponents.animate_slide_out_up(speed: :normal, repeat: true)) ==
          "animate__animated animate__slideOutUp animate__infinite"

      assert String.trim(MyComponents.animate_slide_out_up(speed: :fast, repeat: true)) ==
          "animate__animated animate__slideOutUp animate__fast animate__infinite"

      assert String.trim(MyComponents.animate_slide_out_up(speed: :faster, repeat: true)) ==
          "animate__animated animate__slideOutUp animate__faster animate__infinite"
    end
    # END:BS5-ANIMATIONS-INTEGRATION
  end

  describe "animation functions in Bootstrap5Components module raise an error;" do
    # START:BS5-ANIMATIONS-ERRORS
    test "bounce animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce(repeat: true)
      end
    end

    test "flash animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flash()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flash([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flash(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flash(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flash(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flash(repeat: true)
      end
    end

    test "pulse animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_pulse()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_pulse([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_pulse(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_pulse(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_pulse(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_pulse(repeat: true)
      end
    end

    test "rubber band animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rubber_band()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rubber_band([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rubber_band(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rubber_band(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rubber_band(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rubber_band(repeat: true)
      end
    end

    test "shake x animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_shake_x()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_shake_x([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_shake_x(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_shake_x(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_shake_x(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_shake_x(repeat: true)
      end
    end

    test "shake y animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_shake_y()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_shake_y([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_shake_y(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_shake_y(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_shake_y(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_shake_y(repeat: true)
      end
    end

    test "head shake animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_head_shake()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_head_shake([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_head_shake(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_head_shake(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_head_shake(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_head_shake(repeat: true)
      end
    end

    test "swing animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_swing()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_swing([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_swing(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_swing(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_swing(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_swing(repeat: true)
      end
    end

    test "tada animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_tada()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_tada([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_tada(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_tada(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_tada(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_tada(repeat: true)
      end
    end

    test "wobble animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_wobble()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_wobble([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_wobble(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_wobble(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_wobble(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_wobble(repeat: true)
      end
    end

    test "jello animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_jello()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_jello([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_jello(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_jello(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_jello(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_jello(repeat: true)
      end
    end

    test "heart beat animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_heart_beat()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_heart_beat([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_heart_beat(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_heart_beat(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_heart_beat(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_heart_beat(repeat: true)
      end
    end

    test "back in down animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_down()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_down([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_down(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_down(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_down(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_down(repeat: true)
      end
    end

    test "back in left animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_left()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_left([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_left(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_left(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_left(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_left(repeat: true)
      end
    end

    test "back in right animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_right()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_right([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_right(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_right(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_right(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_right(repeat: true)
      end
    end

    test "back in up animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_up()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_up([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_up(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_up(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_up(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_in_up(repeat: true)
      end
    end

    test "back out down animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_down()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_down([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_down(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_down(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_down(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_down(repeat: true)
      end
    end

    test "back out left animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_left()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_left([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_left(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_left(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_left(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_left(repeat: true)
      end
    end

    test "back out right animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_right()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_right([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_right(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_right(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_right(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_right(repeat: true)
      end
    end

    test "back out up animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_up()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_up([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_up(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_up(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_up(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_back_out_up(repeat: true)
      end
    end

    test "bounce in animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in(repeat: true)
      end
    end

    test "bounce in down animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_down()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_down([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_down(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_down(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_down(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_down(repeat: true)
      end
    end

    test "bounce in left animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_left()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_left([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_left(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_left(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_left(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_left(repeat: true)
      end
    end

    test "bounce in right animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_right()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_right([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_right(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_right(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_right(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_right(repeat: true)
      end
    end

    test "bounce in up animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_up()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_up([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_up(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_up(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_up(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_in_up(repeat: true)
      end
    end

    test "bounce out animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out(repeat: true)
      end
    end

    test "bounce out down animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_down()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_down([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_down(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_down(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_down(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_down(repeat: true)
      end
    end

    test "bounce out left animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_left()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_left([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_left(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_left(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_left(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_left(repeat: true)
      end
    end

    test "bounce out right animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_right()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_right([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_right(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_right(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_right(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_right(repeat: true)
      end
    end

    test "bounce out up animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_up()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_up([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_up(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_up(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_up(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_bounce_out_up(repeat: true)
      end
    end

    test "fade in animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in(repeat: true)
      end
    end

    test "fade in down animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_down()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_down([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_down(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_down(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_down(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_down(repeat: true)
      end
    end

    test "fade in down big animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_down_big()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_down_big([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_down_big(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_down_big(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_down_big(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_down_big(repeat: true)
      end
    end

    test "fade in left animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_left()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_left([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_left(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_left(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_left(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_left(repeat: true)
      end
    end

    test "fade in left big animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_left_big()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_left_big([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_left_big(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_left_big(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_left_big(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_left_big(repeat: true)
      end
    end

    test "fade in right animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_right()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_right([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_right(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_right(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_right(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_right(repeat: true)
      end
    end

    test "fade in right big animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_right_big()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_right_big([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_right_big(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_right_big(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_right_big(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_right_big(repeat: true)
      end
    end

    test "fade in up animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_up()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_up([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_up(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_up(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_up(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_up(repeat: true)
      end
    end

    test "fade in up big animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_up_big()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_up_big([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_up_big(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_up_big(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_up_big(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_up_big(repeat: true)
      end
    end

    test "fade in top left animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_top_left()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_top_left([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_top_left(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_top_left(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_top_left(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_top_left(repeat: true)
      end
    end

    test "fade in top right animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_top_right()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_top_right([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_top_right(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_top_right(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_top_right(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_top_right(repeat: true)
      end
    end

    test "fade in bottom left animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_bottom_left()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_bottom_left([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_bottom_left(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_bottom_left(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_bottom_left(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_bottom_left(repeat: true)
      end
    end

    test "fade in bottom right animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_bottom_right()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_bottom_right([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_bottom_right(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_bottom_right(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_bottom_right(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_in_bottom_right(repeat: true)
      end
    end

    test "fade out animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out(repeat: true)
      end
    end

    test "fade out down animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_down()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_down([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_down(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_down(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_down(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_down(repeat: true)
      end
    end

    test "fade out down big animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_down_big()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_down_big([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_down_big(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_down_big(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_down_big(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_down_big(repeat: true)
      end
    end

    test "fade out left animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_left()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_left([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_left(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_left(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_left(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_left(repeat: true)
      end
    end

    test "fade out left big animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_left_big()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_left_big([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_left_big(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_left_big(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_left_big(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_left_big(repeat: true)
      end
    end

    test "fade out right animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_right()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_right([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_right(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_right(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_right(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_right(repeat: true)
      end
    end

    test "fade out right big animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_right_big()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_right_big([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_right_big(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_right_big(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_right_big(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_right_big(repeat: true)
      end
    end

    test "fade out up animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_up()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_up([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_up(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_up(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_up(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_up(repeat: true)
      end
    end

    test "fade out up big animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_up_big()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_up_big([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_up_big(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_up_big(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_up_big(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_up_big(repeat: true)
      end
    end

    test "fade out top left animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_top_left()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_top_left([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_top_left(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_top_left(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_top_left(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_top_left(repeat: true)
      end
    end

    test "fade out top right animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_top_right()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_top_right([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_top_right(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_top_right(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_top_right(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_top_right(repeat: true)
      end
    end

    test "fade out bottom right animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_bottom_right()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_bottom_right([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_bottom_right(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_bottom_right(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_bottom_right(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_bottom_right(repeat: true)
      end
    end

    test "fade out bottom left animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_bottom_left()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_bottom_left([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_bottom_left(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_bottom_left(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_bottom_left(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_fade_out_bottom_left(repeat: true)
      end
    end

    test "flip animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip(repeat: true)
      end
    end

    test "flip in x animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_in_x()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_in_x([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_in_x(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_in_x(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_in_x(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_in_x(repeat: true)
      end
    end

    test "flip in y animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_in_y()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_in_y([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_in_y(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_in_y(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_in_y(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_in_y(repeat: true)
      end
    end

    test "flip out x animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_out_x()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_out_x([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_out_x(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_out_x(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_out_x(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_out_x(repeat: true)
      end
    end

    test "flip out y animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_out_y()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_out_y([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_out_y(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_out_y(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_out_y(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_flip_out_y(repeat: true)
      end
    end

    test "light speed in right animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_in_right()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_in_right([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_in_right(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_in_right(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_in_right(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_in_right(repeat: true)
      end
    end

    test "light speed in left animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_in_left()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_in_left([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_in_left(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_in_left(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_in_left(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_in_left(repeat: true)
      end
    end

    test "light speed out right animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_out_right()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_out_right([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_out_right(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_out_right(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_out_right(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_out_right(repeat: true)
      end
    end

    test "light speed out left animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_out_left()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_out_left([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_out_left(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_out_left(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_out_left(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_light_speed_out_left(repeat: true)
      end
    end

    test "rotate in animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in(repeat: true)
      end
    end

    test "rotate in down left animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_down_left()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_down_left([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_down_left(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_down_left(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_down_left(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_down_left(repeat: true)
      end
    end

    test "rotate in down right animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_down_right()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_down_right([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_down_right(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_down_right(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_down_right(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_down_right(repeat: true)
      end
    end

    test "rotate in up left animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_up_left()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_up_left([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_up_left(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_up_left(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_up_left(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_up_left(repeat: true)
      end
    end

    test "rotate in up right animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_up_right()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_up_right([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_up_right(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_up_right(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_up_right(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_in_up_right(repeat: true)
      end
    end

    test "rotate out animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out(repeat: true)
      end
    end

    test "rotate out down left animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_down_left()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_down_left([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_down_left(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_down_left(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_down_left(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_down_left(repeat: true)
      end
    end

    test "rotate out down right animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_down_right()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_down_right([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_down_right(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_down_right(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_down_right(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_down_right(repeat: true)
      end
    end

    test "rotate out up left animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_up_left()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_up_left([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_up_left(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_up_left(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_up_left(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_up_left(repeat: true)
      end
    end

    test "rotate out up right animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_up_right()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_up_right([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_up_right(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_up_right(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_up_right(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_rotate_out_up_right(repeat: true)
      end
    end

    test "hinge animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_hinge()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_hinge([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_hinge(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_hinge(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_hinge(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_hinge(repeat: true)
      end
    end

    test "jack in the box animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_jack_in_the_box()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_jack_in_the_box([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_jack_in_the_box(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_jack_in_the_box(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_jack_in_the_box(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_jack_in_the_box(repeat: true)
      end
    end

    test "roll in animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_roll_in()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_roll_in([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_roll_in(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_roll_in(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_roll_in(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_roll_in(repeat: true)
      end
    end

    test "roll out animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_roll_out()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_roll_out([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_roll_out(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_roll_out(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_roll_out(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_roll_out(repeat: true)
      end
    end

    test "zoom in animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in(repeat: true)
      end
    end

    test "zoom in down animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_down()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_down([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_down(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_down(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_down(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_down(repeat: true)
      end
    end

    test "zoom in left animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_left()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_left([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_left(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_left(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_left(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_left(repeat: true)
      end
    end

    test "zoom in right animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_right()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_right([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_right(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_right(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_right(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_right(repeat: true)
      end
    end

    test "zoom in up animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_up()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_up([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_up(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_up(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_up(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_in_up(repeat: true)
      end
    end

    test "zoom out animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out(repeat: true)
      end
    end

    test "zoom out down animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_down()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_down([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_down(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_down(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_down(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_down(repeat: true)
      end
    end

    test "zoom out left animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_left()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_left([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_left(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_left(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_left(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_left(repeat: true)
      end
    end

    test "zoom out right animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_right()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_right([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_right(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_right(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_right(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_right(repeat: true)
      end
    end

    test "zoom out up animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_up()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_up([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_up(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_up(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_up(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_zoom_out_up(repeat: true)
      end
    end

    test "slide in down animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_down()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_down([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_down(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_down(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_down(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_down(repeat: true)
      end
    end

    test "slide in left animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_left()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_left([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_left(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_left(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_left(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_left(repeat: true)
      end
    end

    test "slide in right animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_right()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_right([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_right(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_right(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_right(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_right(repeat: true)
      end
    end

    test "slide in up animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_up()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_up([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_up(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_up(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_up(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_in_up(repeat: true)
      end
    end

    test "slide out down animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_down()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_down([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_down(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_down(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_down(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_down(repeat: true)
      end
    end

    test "slide out left animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_left()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_left([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_left(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_left(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_left(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_left(repeat: true)
      end
    end

    test "slide out right animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_right()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_right([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_right(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_right(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_right(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_right(repeat: true)
      end
    end

    test "slide out up animation" do
      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_up()
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_up([])
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_up(speed: :normal)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_up(speed: :fast)
      end

      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_up(speed: :faster)
      end


      assert_raise DocumentationOnlyError, fn ->
        Bootstrap5Components.animate_slide_out_up(repeat: true)
      end
    end
    # END:BS5-ANIMATIONS-ERRORS
  end
end
