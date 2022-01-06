defmodule MomentsWeb.MomentLiveTest do
  use MomentsWeb.ConnCase

  import Phoenix.LiveViewTest
  import Moments.EntriesFixtures

  @create_attrs %{body: "some body"}
  @update_attrs %{body: "some updated body"}
  @invalid_attrs %{body: nil}

  defp create_moment(_) do
    moment = moment_fixture()
    %{moment: moment}
  end

  describe "Index" do
    setup [:create_moment]

    test "lists all moments", %{conn: conn, moment: moment} do
      {:ok, _index_live, html} = live(conn, Routes.moment_index_path(conn, :index))

      assert html =~ "Listing Moments"
      assert html =~ moment.body
    end

    test "saves new moment", %{conn: conn} do
      {:ok, index_live, _html} = live(conn, Routes.moment_index_path(conn, :index))

      assert index_live |> element("a", "New Moment") |> render_click() =~
               "New Moment"

      assert_patch(index_live, Routes.moment_index_path(conn, :new))

      assert index_live
             |> form("#moment-form", moment: @invalid_attrs)
             |> render_change() =~ "can&#39;t be blank"

      {:ok, _, html} =
        index_live
        |> form("#moment-form", moment: @create_attrs)
        |> render_submit()
        |> follow_redirect(conn, Routes.moment_index_path(conn, :index))

      assert html =~ "Moment created successfully"
      assert html =~ "some body"
    end

    test "updates moment in listing", %{conn: conn, moment: moment} do
      {:ok, index_live, _html} = live(conn, Routes.moment_index_path(conn, :index))

      assert index_live |> element("#moment-#{moment.id} a", "Edit") |> render_click() =~
               "Edit Moment"

      assert_patch(index_live, Routes.moment_index_path(conn, :edit, moment))

      assert index_live
             |> form("#moment-form", moment: @invalid_attrs)
             |> render_change() =~ "can&#39;t be blank"

      {:ok, _, html} =
        index_live
        |> form("#moment-form", moment: @update_attrs)
        |> render_submit()
        |> follow_redirect(conn, Routes.moment_index_path(conn, :index))

      assert html =~ "Moment updated successfully"
      assert html =~ "some updated body"
    end

    test "deletes moment in listing", %{conn: conn, moment: moment} do
      {:ok, index_live, _html} = live(conn, Routes.moment_index_path(conn, :index))

      assert index_live |> element("#moment-#{moment.id} a", "Delete") |> render_click()
      refute has_element?(index_live, "#moment-#{moment.id}")
    end
  end

  describe "Show" do
    setup [:create_moment]

    test "displays moment", %{conn: conn, moment: moment} do
      {:ok, _show_live, html} = live(conn, Routes.moment_show_path(conn, :show, moment))

      assert html =~ "Show Moment"
      assert html =~ moment.body
    end

    test "updates moment within modal", %{conn: conn, moment: moment} do
      {:ok, show_live, _html} = live(conn, Routes.moment_show_path(conn, :show, moment))

      assert show_live |> element("a", "Edit") |> render_click() =~
               "Edit Moment"

      assert_patch(show_live, Routes.moment_show_path(conn, :edit, moment))

      assert show_live
             |> form("#moment-form", moment: @invalid_attrs)
             |> render_change() =~ "can&#39;t be blank"

      {:ok, _, html} =
        show_live
        |> form("#moment-form", moment: @update_attrs)
        |> render_submit()
        |> follow_redirect(conn, Routes.moment_show_path(conn, :show, moment))

      assert html =~ "Moment updated successfully"
      assert html =~ "some updated body"
    end
  end
end
