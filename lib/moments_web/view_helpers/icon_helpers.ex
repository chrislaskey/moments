defmodule MomentsWeb.IconHelpers do
  use Phoenix.HTML

  import Phoenix.LiveView.Helpers

  @default_class "h-6 w-6 flex-shrink-0 text-gray-400"

  @doc """
  Render an SVG Hero Icons

      <%= icon(:star) %>

  ## Options

  Icons are styled by default. To override default values, pass a keyword list as a second argument:

      <%= icon(:star, class: "text-blue-300 h-8 w-8 flex-shrink-0") %>

  """
  def icon(type, assigns \\ [])

  def icon(type, options) when is_list(options) do
    assigns = %{
      class: Keyword.get(options, :class, @default_class)
    }

    icon(type, assigns)
  end

  # Icons

  def icon(:adjustments, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6V4m0 2a2 2 0 100 4m0-4a2 2 0 110 4m-6 8a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4m6 6v10m6-2a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4" />
    </svg>
    """
  end

  def icon(:arrow_circle_down_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 13l-3 3m0 0l-3-3m3 3V8m0 13a9 9 0 110-18 9 9 0 010 18z" />
    </svg>
    """
  end

  def icon(:arrow_circle_left_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11 15l-3-3m0 0l3-3m-3 3h8M3 12a9 9 0 1118 0 9 9 0 01-18 0z" />
    </svg>
    """
  end

  def icon(:arrow_circle_right_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 9l3 3m0 0l-3 3m3-3H8m13 0a9 9 0 11-18 0 9 9 0 0118 0z" />
    </svg>
    """
  end

  def icon(:arrow_circle_up_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 11l3-3m0 0l3 3m-3-3v8m0-13a9 9 0 110 18 9 9 0 010-18z" />
    </svg>
    """
  end

  def icon(:arrow_narrow_right_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3" />
    </svg>
    """
  end

  def icon(:ban, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path fill-rule="evenodd" d="M13.477 14.89A6 6 0 015.11 6.524l8.367 8.368zm1.414-1.414L6.524 5.11a6 6 0 018.367 8.367zM18 10a8 8 0 11-16 0 8 8 0 0116 0z" clip-rule="evenodd" />
    </svg>
    """
  end

  # Alias for `ban`, circle with a strike through it
  def icon(:cancel, assigns), do: icon(:ban, assigns)

  def icon(:ban_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M18.364 18.364A9 9 0 005.636 5.636m12.728 12.728A9 9 0 015.636 5.636m12.728 12.728L5.636 5.636" />
    </svg>
    """
  end

  # Alias for `ban_outline`, circle with a strike through it
  def icon(:cancel_outline, assigns), do: icon(:ban_outline, assigns)

  def icon(:beaker_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4M7.835 4.697a3.42 3.42 0 001.946-.806 3.42 3.42 0 014.438 0 3.42 3.42 0 001.946.806 3.42 3.42 0 013.138 3.138 3.42 3.42 0 00.806 1.946 3.42 3.42 0 010 4.438 3.42 3.42 0 00-.806 1.946 3.42 3.42 0 01-3.138 3.138 3.42 3.42 0 00-1.946.806 3.42 3.42 0 01-4.438 0 3.42 3.42 0 00-1.946-.806 3.42 3.42 0 01-3.138-3.138 3.42 3.42 0 00-.806-1.946 3.42 3.42 0 010-4.438 3.42 3.42 0 00.806-1.946 3.42 3.42 0 013.138-3.138z" />
    </svg>
    """
  end

  def icon(:calendar_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
    </svg>
    """
  end

  def icon(:check, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
    </svg>
    """
  end

  def icon(:check_circle_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
    </svg>
    """
  end

  def icon(:chevron_down, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
    </svg>
    """
  end

  def icon(:chevron_left, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path fill-rule="evenodd" d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z" clip-rule="evenodd" />
    </svg>
    """
  end

  def icon(:chevron_right, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd" />
    </svg>
    """
  end

  def icon(:cursor_click_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 15l-2 5L9 9l11 4-5 2zm0 0l5 5M7.188 2.239l.777 2.897M5.136 7.965l-2.898-.777M13.95 4.05l-2.122 2.122m-5.657 5.656l-2.12 2.122" />
    </svg>
    """
  end

  def icon(:document_duplicate_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7v8a2 2 0 002 2h6M8 7V5a2 2 0 012-2h4.586a1 1 0 01.707.293l4.414 4.414a1 1 0 01.293.707V15a2 2 0 01-2 2h-2M8 7H6a2 2 0 00-2 2v10a2 2 0 002 2h8a2 2 0 002-2v-2" />
    </svg>
    """
  end

  # Alias for `document_duplicate_outline`, two documents
  def icon(:documents, assigns), do: icon(:document_duplicate_outline, assigns)

  def icon(:exclamation_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z" />
    </svg>
    """
  end

  def icon(:exclamation_circle, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z" clip-rule="evenodd" />
    </svg>
    """
  end

  def icon(:exclamation_circle_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4m0 4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
    </svg>
    """
  end

  def icon(:external_link_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 6H6a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2v-4M14 4h6m0 0v6m0-6L10 14" />
    </svg>
    """
  end

  def icon(:eye_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
    </svg>
    """
  end

  def icon(:eye_off_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13.875 18.825A10.05 10.05 0 0112 19c-4.478 0-8.268-2.943-9.543-7a9.97 9.97 0 011.563-3.029m5.858.908a3 3 0 114.243 4.243M9.878 9.878l4.242 4.242M9.88 9.88l-3.29-3.29m7.532 7.532l3.29 3.29M3 3l3.59 3.59m0 0A9.953 9.953 0 0112 5c4.478 0 8.268 2.943 9.543 7a10.025 10.025 0 01-4.132 5.411m0 0L21 21" />
    </svg>
    """
  end

  def icon(:feather, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="currentColor" viewBox="0 0 24 24" stroke="none">
      <path d="M20.42542,3.57458c-1.33606-1.336-5.06885.07092-8.4256,2.22516C11.66187,6.01666,10.32751,11.77,10,12c-.34186.24005.32373-5.04266-.00043-4.79285A22.27271,22.27271,0,0,0,7.86505,9.0639c-1.68878,1.68872-2.442,4.81183-1.35254,6.88879C5.501,17.07782,4.47968,18.253,3.42383,19.52a.7499.7499,0,1,0,1.15234.96A92.509,92.509,0,0,1,17.60724,7.41437a.714.714,0,0,1-.077.11591A134.14936,134.14936,0,0,0,8.6001,17.72394a6.58,6.58,0,0,0,6.336-1.589,22.27507,22.27507,0,0,0,1.85736-2.13538C17.20959,13.45959,15,13,15,13s3.55664-1.56073,3.81335-2.00043C20.6051,7.931,21.62976,4.779,20.42542,3.57458Z"/>
    </svg>
    """
  end

  def icon(:feather_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path d="M20.42542,3.57458c-1.33606-1.336-5.06885.07092-8.4256,2.22516C11.66187,6.01666,10.32751,11.77,10,12c-.34186.24005.32373-5.04266-.00043-4.79285A22.27271,22.27271,0,0,0,7.86505,9.0639c-1.68878,1.68872-2.442,4.81183-1.35254,6.88879C5.501,17.07782,4.47968,18.253,3.42383,19.52a.7499.7499,0,1,0,1.15234.96A92.509,92.509,0,0,1,17.60724,7.41437a.714.714,0,0,1-.077.11591A134.14936,134.14936,0,0,0,8.6001,17.72394a6.58,6.58,0,0,0,6.336-1.589,22.27507,22.27507,0,0,0,1.85736-2.13538C17.20959,13.45959,15,13,15,13s3.55664-1.56073,3.81335-2.00043C20.6051,7.931,21.62976,4.779,20.42542,3.57458Z"/>
    </svg>
    """
  end

  def icon(:heart_letter, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 200 200" xml:space="preserve">
      <g fill="currentColor">
        <path d="M97.523 81.726a3.503 3.503 0 0 0 4.95 0l13.892-13.892c2.225-2.226 3.45-5.187 3.45-8.339s-1.226-6.113-3.45-8.338a11.74 11.74 0 0 0-8.351-3.467c-2.99 0-5.816 1.115-8.01 3.149a11.727 11.727 0 0 0-8.021-3.149 11.66 11.66 0 0 0-8.333 3.462 11.695 11.695 0 0 0-3.465 8.342c0 3.155 1.23 6.119 3.453 8.333l13.885 13.899zm-8.919-25.628a4.73 4.73 0 0 1 3.379-1.406c1.28 0 2.488.503 3.402 1.417l2.139 2.139a3.501 3.501 0 0 0 4.942.007l2.151-2.139a4.77 4.77 0 0 1 3.397-1.424c1.28 0 2.488.503 3.401 1.416.903.903 1.4 2.106 1.4 3.389s-.497 2.486-1.4 3.389L99.999 74.302l-11.41-11.421a4.747 4.747 0 0 1-1.405-3.385c0-1.28.499-2.481 1.42-3.398z"></path>
        <path d="M183.484 78.065c.423-4.795-1.807-9.337-5.871-11.907l-.155-.098-.009-.007-4.674-2.955a3.366 3.366 0 0 0-.113-.068l-6.629-4.193V36.955a3.5 3.5 0 0 0-3.5-3.5h-36.609l-19.089-12.077c-4.162-2.636-9.529-2.632-13.667 0L74.077 33.455h-35.84a3.5 3.5 0 0 0-3.5 3.5v21.387l-8.3 5.253-3.886 2.458-.008.006-.143.09c-4.077 2.579-6.307 7.12-5.884 11.915-.037.466-.061.918-.061 1.338v83.371c0 .786.052 1.57.153 2.333v.008l.001.005.002.009c1.165 8.82 8.751 15.469 17.653 15.469H165.72c8.91 0 16.502-6.649 17.667-15.469l.002-.009.001-.005v-.008a17.66 17.66 0 0 0 .153-2.333v-83.37c.001-.42-.022-.873-.059-1.338zm-17.452-10.946L169.005 69l.114.068 4.739 2.997c2.253 1.425 2.842 3.802 2.641 5.55-.005.041-.007.081-.01.121-.016.117-.039.231-.061.345-.018.094-.034.189-.056.281-.028.115-.064.226-.099.338-.027.089-.052.179-.083.265-.04.111-.089.217-.136.325-.036.083-.069.167-.109.248-.053.107-.114.209-.173.311-.044.076-.084.154-.131.227-.067.104-.142.202-.216.301-.049.067-.095.136-.147.201-.082.101-.173.195-.263.291-.053.057-.102.117-.157.171-.103.102-.216.196-.328.291-.05.042-.095.088-.146.128a6.077 6.077 0 0 1-.527.373l-7.826 4.948V67.119zm-69.115-39.83a5.775 5.775 0 0 1 6.174.005l9.738 6.161H87.17l9.747-6.166zM41.738 60.268V40.455H159.032v50.753l-21.029 13.301H61.996L41.738 91.697V60.268zm85.197 51.241-9.326 5.898-9.325-5.898h18.651zm-35.22 0-9.325 5.898-1.482-.937-7.845-4.961h18.652zm-65.56-39.452.867-.549 3.986-2.521.005-.004 3.724-2.356V87.27l-8.6-5.439a6.06 6.06 0 0 1-.526-.373c-.046-.036-.086-.078-.131-.115-.117-.099-.235-.197-.342-.304-.052-.051-.097-.107-.147-.16-.093-.099-.187-.197-.272-.301-.05-.062-.094-.129-.141-.193-.075-.102-.152-.202-.221-.308-.046-.072-.085-.148-.128-.222-.06-.104-.122-.208-.176-.316-.04-.081-.073-.166-.109-.249-.046-.107-.095-.213-.135-.323-.033-.09-.058-.183-.086-.275-.033-.108-.068-.216-.095-.327-.024-.098-.041-.2-.06-.3-.021-.108-.043-.215-.057-.325a2.635 2.635 0 0 0-.011-.125c-.2-1.748.389-4.125 2.655-5.558zm-2.699 16.361 1.919 1.214 10.989 6.954.004.003 38.997 24.657.48.304-30.55 19.329-21.838 13.816V88.418zm142.265 85.18H34.265c-5.227 0-9.705-3.774-10.633-8.864.035-.145.077-.294.128-.447.011-.034.027-.07.039-.105.043-.122.089-.244.143-.369.025-.057.054-.115.082-.172.049-.104.102-.209.16-.314a6.443 6.443 0 0 1 .454-.686c.077-.099.161-.197.247-.294.055-.062.108-.123.168-.184a6.09 6.09 0 0 1 .329-.306c.057-.05.11-.102.17-.151.182-.147.376-.291.59-.427l70.764-44.771a5.837 5.837 0 0 1 6.185-.001l70.762 44.769c.215.137.41.28.593.428.059.048.109.097.165.146.117.103.232.206.335.312.058.059.11.12.164.18a5.705 5.705 0 0 1 .394.491 7.992 7.992 0 0 1 .312.493c.058.104.11.208.159.312.028.059.058.118.083.176.051.118.095.235.136.35.015.042.033.084.047.125.05.151.092.299.127.443-.927 5.091-5.412 8.866-10.647 8.866zm10.823-18.903-37.237-23.559-15.152-9.586 51.158-32.354 1.231-.778v66.277z"></path>
        <path d="M142.13 93.631a3.5 3.5 0 0 0-3.5-3.5H61.432a3.5 3.5 0 1 0 0 7h77.198a3.5 3.5 0 0 0 3.5-3.5z"></path>
      </g>
    </svg>
    """
  end

  def icon(:heart_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
    </svg>
    """
  end

  def icon(:home, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path d="M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z" />
    </svg>
    """
  end

  def icon(:home_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
    </svg>
    """
  end

  def icon(:information_circle_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
    </svg>
    """
  end

  def icon(:lock_closed_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z" />
    </svg>
    """
  end

  def icon(:lock_open_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 11V7a4 4 0 118 0m-4 8v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2z" />
    </svg>
    """
  end

  def icon(:mail_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
    </svg>
    """
  end

  def icon(:menu_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
    </svg>
    """
  end

  def icon(:pause_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 9v6m4-6v6m7-3a9 9 0 11-18 0 9 9 0 0118 0z" />
    </svg>
    """
  end

  def icon(:picture_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} style="enable-background:new 0 0 50 50;" version="1.1" viewBox="0 0 50 50" xml:space="preserve" xmlns:xlink="http://www.w3.org/1999/xlink">
      <g id="Layer_1">
        <path d="M43,39h6V4H8v6H1v36h42V39z M10,6h37v31h-4V10H10V6z M8,12h33v7.586l-4-4l-17,17l-10-10l-7,7V12H8z M41,44H3V32.414l7-7   l10,10l17-17l4,4V39V44z"/>
        <path d="M20,25c2.757,0,5-2.243,5-5s-2.243-5-5-5s-5,2.243-5,5S17.243,25,20,25z M20,17c1.654,0,3,1.346,3,3s-1.346,3-3,3   s-3-1.346-3-3S18.346,17,20,17z"/>
      </g>
      <g/>
    </svg>
    """
  end

  def icon(:pencil, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path d="M13.586 3.586a2 2 0 112.828 2.828l-.793.793-2.828-2.828.793-.793zM11.379 5.793L3 14.172V17h2.828l8.38-8.379-2.83-2.828z" />
    </svg>
    """
  end

  def icon(:play, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zM9.555 7.168A1 1 0 008 8v4a1 1 0 001.555.832l3-2a1 1 0 000-1.664l-3-2z" clip-rule="evenodd" />
    </svg>
    """
  end

  def icon(:play_alt, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="currentColor" stroke="none" style="enable-background:new 0 0 32 32;" version="1.1" viewBox="0 0 32 32" xml:space="preserve">
      <path d="M28.516,14L6,2.75C5.344,2.453,4.672,2,4,2C2.922,2,2,2.906,2,4v24c0,1.094,0.922,2,2,2c0.672,0,1.344-0.453,2-0.75  L28.516,18C29.063,17.734,30,17.188,30,16S29.063,14.266,28.516,14z M6,24.778V7.222L23.568,16L6,24.778z"/>
    </svg>
    """
  end

  def icon(:play_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M14.752 11.168l-3.197-2.132A1 1 0 0010 9.87v4.263a1 1 0 001.555.832l3.197-2.132a1 1 0 000-1.664z" />
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
    </svg>
    """
  end

  def icon(:plus, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path fill-rule="evenodd" d="M10 5a1 1 0 011 1v3h3a1 1 0 110 2h-3v3a1 1 0 11-2 0v-3H6a1 1 0 110-2h3V6a1 1 0 011-1z" clip-rule="evenodd" />
    </svg>
    """
  end

  def icon(:shield_exclamation_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 24 24" stroke="currentColor" fill="none">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20.618 5.984A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016zM12 9v2m0 4h.01" />
    </svg>
    """
  end

  def icon(:slash, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 16 20" fill="currentColor">
      <path d="M5.697 4.34L8.98 16.532h1.327L7.025 4.341H5.697z" />
    </svg>
    """
  end

  def icon(:sparkles_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 3v4M3 5h4M6 17v4m-2-2h4m5-16l2.286 6.857L21 12l-5.714 2.143L13 21l-2.286-6.857L5 12l5.714-2.143L13 3z" />
    </svg>
    """
  end

  def icon(:star, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
    </svg>
    """
  end

  def icon(:stars, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} style="transform: scaleX(-1);" viewBox="0 0 64 64" fill="currentColor">
      <path d="M10.19 27.7a1.35 1.35 0 0 1-.55-1.35l1-5.57a3.38 3.38 0 0 0-1-3l-4-3.95a1.38 1.38 0 0 1 .76-2.35l5.59-.81a3.38 3.38 0 0 0 2.54-1.85L17 3.77a1.38 1.38 0 0 1 2.47 0l2.5 5.07a3.38 3.38 0 0 0 2.54 1.85l5.59.81a1.38 1.38 0 0 1 .76 2.35l-4 3.94a3.38 3.38 0 0 0-1 3l1 5.57a1.38 1.38 0 0 1-2 1.45l-5-2.63a3.37 3.37 0 0 0-3.14 0l-5 2.63a1.36 1.36 0 0 1-1.53-.11ZM58.42 23.71l-4 3.94a3.37 3.37 0 0 0-1 3l1 5.57a1.38 1.38 0 0 1-2 1.45l-5-2.63a3.38 3.38 0 0 0-3.14 0l-5 2.63a1.38 1.38 0 0 1-2-1.45l1-5.57a3.37 3.37 0 0 0-1-3l-4-3.95a1.38 1.38 0 0 1 .76-2.35l5.59-.81a3.37 3.37 0 0 0 2.54-1.85l2.5-5.07a1.38 1.38 0 0 1 2.47 0l2.5 5.07a3.37 3.37 0 0 0 2.54 1.85l5.59.81a1.38 1.38 0 0 1 .76 2.35ZM41.47 46.88l-4 3.94a3.37 3.37 0 0 0-1 3l1 5.57a1.38 1.38 0 0 1-2 1.45l-5-2.63a3.38 3.38 0 0 0-3.14 0l-5 2.63a1.38 1.38 0 0 1-2-1.45l1-5.57a3.37 3.37 0 0 0-1-3l-4-3.95a1.38 1.38 0 0 1 .67-2.34l5.59-.81a3.38 3.38 0 0 0 2.54-1.85l2.5-5.07a1.38 1.38 0 0 1 2.47 0l2.5 5.07a3.37 3.37 0 0 0 2.54 1.85l5.59.81a1.38 1.38 0 0 1 .76 2.35Z"></path>
    </svg>
    """
  end

  def icon(:star_letter, assigns) do
    ~H"""
    <svg xmlns:xlink="http://www.w3.org/1999/xlink" class={assigns.class} viewBox="0 0 200 200" fill="currentColor">
      <g fill="currentColor">
        <path d="M166.596 92.331a3.553 3.553 0 0 0-.09-.222c-.893-2.185-2.212-4.167-3.935-5.905l-8.175-8.175V17.254a3.5 3.5 0 0 0-3.5-3.5H49.223a3.5 3.5 0 0 0-3.5 3.5v60.788l-8.162 8.162a17.922 17.922 0 0 0-3.476 4.882 12.357 12.357 0 0 0-1.963 6.687v76.065a12.35 12.35 0 0 0 2.826 7.878c.004.004.006.009.009.014l.007.007.006.008.012.012a12.37 12.37 0 0 0 9.548 4.489h110.94c3.706 0 7.185-1.639 9.553-4.494l.007-.007.004-.005.01-.011.014-.021a12.353 12.353 0 0 0 2.82-7.87V97.773c0-1.9-.454-3.766-1.282-5.442zm-5.718 80.755-29.775-29.775 12.162-12.162 10.107-10.107.002-.002 7.505-7.505v59.551zm-3.268-81.944a11.093 11.093 0 0 1 2.442 3.679l.022.055a10.958 10.958 0 0 1 .803 4.147 11.09 11.09 0 0 1-3.256 7.869l-3.226 3.225V87.928l3.215 3.214zM52.723 20.754h94.673v96.364l-17.105 17.104-4.139 4.139-13.337-13.336c-3.533-3.525-8.173-5.288-12.814-5.288-2.901 0-5.803.689-8.434 2.067a18.137 18.137 0 0 0-2.684 1.744c-.588.457-1.162.94-1.702 1.479l-13.267 13.267-21.19-21.19v-96.35zm-13.601 92.648 7.624 7.625.002.003 22.215 22.215-29.842 29.842v-59.685zm6.601-25.461v22.163l-3.212-3.212c-.207-.207-.404-.42-.592-.64-2.814-3.294-3.478-7.986-1.62-11.946l.043-.089a10.951 10.951 0 0 1 2.169-3.063l3.212-3.213zm-1.193 91.305c-.502 0-.994-.069-1.466-.202l33.325-33.325 15.739-15.74c4.34-4.33 11.402-4.331 15.741-.002l15.809 15.809 33.259 33.258a5.445 5.445 0 0 1-1.467.202H44.53z"></path>
        <path d="m82.594 74.248-2.91 16.968a3.498 3.498 0 0 0 5.079 3.689L100 86.894l15.238 8.012a3.502 3.502 0 0 0 5.079-3.69l-2.91-16.968 12.328-12.016a3.502 3.502 0 0 0-1.94-5.97l-17.036-2.476-7.619-15.438a3.5 3.5 0 0 0-6.278 0l-7.619 15.438-17.037 2.476a3.498 3.498 0 0 0-1.939 5.97l12.327 12.016zm9.476-13.8a3.499 3.499 0 0 0 2.635-1.915L100 47.805l5.295 10.729a3.501 3.501 0 0 0 2.636 1.915l11.839 1.721-8.567 8.351a3.502 3.502 0 0 0-1.006 3.098l2.022 11.792-10.59-5.568a3.499 3.499 0 0 0-3.258 0l-10.589 5.568 2.022-11.792a3.499 3.499 0 0 0-1.007-3.098L80.23 62.17l11.84-1.722z"></path>
      </g>
    </svg>
    """
  end

  def icon(:status_online, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path fill-rule="evenodd" d="M5.05 3.636a1 1 0 010 1.414 7 7 0 000 9.9 1 1 0 11-1.414 1.414 9 9 0 010-12.728 1 1 0 011.414 0zm9.9 0a1 1 0 011.414 0 9 9 0 010 12.728 1 1 0 11-1.414-1.414 7 7 0 000-9.9 1 1 0 010-1.414zM7.879 6.464a1 1 0 010 1.414 3 3 0 000 4.243 1 1 0 11-1.415 1.414 5 5 0 010-7.07 1 1 0 011.415 0zm4.242 0a1 1 0 011.415 0 5 5 0 010 7.072 1 1 0 01-1.415-1.415 3 3 0 000-4.242 1 1 0 010-1.415zM10 9a1 1 0 011 1v.01a1 1 0 11-2 0V10a1 1 0 011-1z" clip-rule="evenodd" />
    </svg>
    """
  end

  def icon(:switch_vertical, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 20 20" stroke="currentColor">
      <path d="M5 12a1 1 0 102 0V6.414l1.293 1.293a1 1 0 001.414-1.414l-3-3a1 1 0 00-1.414 0l-3 3a1 1 0 001.414 1.414L5 6.414V12zM15 8a1 1 0 10-2 0v5.586l-1.293-1.293a1 1 0 00-1.414 1.414l3 3a1 1 0 001.414 0l3-3a1 1 0 00-1.414-1.414L15 13.586V8z" />
    </svg>
    """
  end

  # Alias for `switch_vertical`, one arrow up and one arrow down
  def icon(:sort_alt, assigns), do: icon(:switch_vertical_outline, assigns)

  def icon(:switch_vertical_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 16V4m0 0L3 8m4-4l4 4m6 0v12m0 0l4-4m-4 4l-4-4" />
    </svg>
    """
  end

  # Alias for `switch_vertical_outline`, one arrow up and one arrow down
  def icon(:sort_alt_outline, assigns), do: icon(:switch_vertical_outline, assigns)

  def icon(:tag_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 7h.01M7 3h5c.512 0 1.024.195 1.414.586l7 7a2 2 0 010 2.828l-7 7a2 2 0 01-2.828 0l-7-7A1.994 1.994 0 013 12V7a4 4 0 014-4z" />
    </svg>
    """
  end

  def icon(:trash, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path fill-rule="evenodd" d="M9 2a1 1 0 00-.894.553L7.382 4H4a1 1 0 000 2v10a2 2 0 002 2h8a2 2 0 002-2V6a1 1 0 100-2h-3.382l-.724-1.447A1 1 0 0011 2H9zM7 8a1 1 0 012 0v6a1 1 0 11-2 0V8zm5-1a1 1 0 00-1 1v6a1 1 0 102 0V8a1 1 0 00-1-1z" clip-rule="evenodd" />
    </svg>
    """
  end

  def icon(:trash_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
    </svg>
    """
  end

  def icon(:user_group, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path d="M13 6a3 3 0 11-6 0 3 3 0 016 0zM18 8a2 2 0 11-4 0 2 2 0 014 0zM14 15a4 4 0 00-8 0v3h8v-3zM6 8a2 2 0 11-4 0 2 2 0 014 0zM16 18v-3a5.972 5.972 0 00-.75-2.906A3.005 3.005 0 0119 15v3h-3zM4.75 12.094A5.973 5.973 0 004 15v3H1v-3a3 3 0 013.75-2.906z" />
    </svg>
    """
  end

  def icon(:user_circle, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-6-3a2 2 0 11-4 0 2 2 0 014 0zm-2 4a5 5 0 00-4.546 2.916A5.986 5.986 0 0010 16a5.986 5.986 0 004.546-2.084A5 5 0 0010 11z" clip-rule="evenodd" />
    </svg>
    """
  end

  def icon(:user_circle_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5.121 17.804A13.937 13.937 0 0112 16c2.5 0 4.847.655 6.879 1.804M15 10a3 3 0 11-6 0 3 3 0 016 0zm6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
    </svg>
    """
  end

  def icon(:user_group_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z" />
    </svg>
    """
  end

  def icon(:users_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z" />
    </svg>
    """
  end

  def icon(:video_camera_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 10l4.553-2.276A1 1 0 0121 8.618v6.764a1 1 0 01-1.447.894L15 14M5 18h8a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v8a2 2 0 002 2z" />
    </svg>
    """
  end

  def icon(:view_bullet_list, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 32 32" fill="currentColor">
      <path d=" M3 8 A3 3 0 0 0 9 8 A3 3 0 0 0 3 8 M12 6 L28 6 L28 10 L12 10z M3 16 A3 3 0 0 0 9 16 A3 3 0 0 0 3 16 M12 14 L28 14 L28 18 L12 18z M3 24 A3 3 0 0 0 9 24 A3 3 0 0 0 3 24 M12 22 L28 22 L28 26 L12 26z "/>
    </svg>
    """
  end

  def icon(:view_grid, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path d="M5 3a2 2 0 00-2 2v2a2 2 0 002 2h2a2 2 0 002-2V5a2 2 0 00-2-2H5zM5 11a2 2 0 00-2 2v2a2 2 0 002 2h2a2 2 0 002-2v-2a2 2 0 00-2-2H5zM11 5a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2V5zM11 13a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2v-2z" />
    </svg>
    """
  end

  def icon(:view_grid_small, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} style="enable-background:new 0 0 16 16; margin-top: 1px;" version="1.1" viewBox="0 0 16 16" xml:space="preserve" fill="currentColor">
      <path d="M3,0H1C0.45,0,0,0.45,0,1v2c0,0.55,0.45,1,1,1h2c0.55,0,1-0.45,1-1V1C4,0.45,3.55,0,3,0z M9,0H7C6.45,0,6,0.45,6,1v2  c0,0.55,0.45,1,1,1h2c0.55,0,1-0.45,1-1V1C10,0.45,9.55,0,9,0z M15,0h-2c-0.55,0-1,0.45-1,1v2c0,0.55,0.45,1,1,1h2  c0.55,0,1-0.45,1-1V1C16,0.45,15.55,0,15,0z M3,6H1C0.45,6,0,6.45,0,7v2c0,0.55,0.45,1,1,1h2c0.55,0,1-0.45,1-1V7C4,6.45,3.55,6,3,6  z M9,6H7C6.45,6,6,6.45,6,7v2c0,0.55,0.45,1,1,1h2c0.55,0,1-0.45,1-1V7C10,6.45,9.55,6,9,6z M15,6h-2c-0.55,0-1,0.45-1,1v2  c0,0.55,0.45,1,1,1h2c0.55,0,1-0.45,1-1V7C16,6.45,15.55,6,15,6z M3,12H1c-0.55,0-1,0.45-1,1v2c0,0.55,0.45,1,1,1h2  c0.55,0,1-0.45,1-1v-2C4,12.45,3.55,12,3,12z M9,12H7c-0.55,0-1,0.45-1,1v2c0,0.55,0.45,1,1,1h2c0.55,0,1-0.45,1-1v-2  C10,12.45,9.55,12,9,12z M15,12h-2c-0.55,0-1,0.45-1,1v2c0,0.55,0.45,1,1,1h2c0.55,0,1-0.45,1-1v-2C16,12.45,15.55,12,15,12z"/>
    </svg>
    """
  end

  def icon(:world_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3.055 11H5a2 2 0 012 2v1a2 2 0 002 2 2 2 0 012 2v2.945M8 3.935V5.5A2.5 2.5 0 0010.5 8h.5a2 2 0 012 2 2 2 0 104 0 2 2 0 012-2h1.064M15 20.488V18a2 2 0 012-2h3.064M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
    </svg>
    """
  end

  def icon(:x_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
    </svg>
    """
  end
end
