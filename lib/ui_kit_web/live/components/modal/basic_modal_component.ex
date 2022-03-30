defmodule UiKitWeb.BasicModalComponent do
  use UiKitWeb, :live_component

  def render(assigns) do
    ~H"""
    <div
      class="py-12 bg-gray-700 dark:bg-gray-900 transition duration-150 ease-in-out z-10 absolute top-0 right-0 bottom-0 left-0"
      style="background-color: rgba(0,0,0,.5);"
    >
      <div
        role="alert"
        class="container mx-auto w-11/12 md:w-2/3 max-w-lg"
        @click.away="open_basic = false"
        x-transition:enter="ease-out duration-300"
        x-transition:enter-start="opacity-0 scale-90"
        x-transition:enter-end="opacity-100 scale-100"
        x-transition:leave="ease-in duration-300"
        x-transition:leave-start="opacity-100 scale-100"
        x-transition:leave-end="opacity-0 scale-90"
      >
        <div class="relative pt-6 pb-4 px-8 md:px-8 bg-white dark:bg-gray-800 shadow-md rounded border border-gray-400">
          <button
            class="focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500 rounded-md cursor-pointer absolute top-0 right-0 mt-4 mr-5 text-gray-400 hover:text-gray-600 dark:hover:text-gray-500 transition duration-150 ease-in-out"
            aria-label="Close"
            role="button"
            @click="open_basic = false"
          >
            <svg
              xmlns="http://www.w3.org/2000/svg"
              class="icon icon-tabler icon-tabler-x"
              width="20"
              height="20"
              viewBox="0 0 24 24"
              stroke-width="2.5"
              stroke="currentColor"
              fill="none"
              stroke-linecap="round"
              stroke-linejoin="round"
            >
              <path stroke="none" d="M0 0h24v24H0z" />

              <line x1="18" y1="6" x2="6" y2="18" />

              <line x1="6" y1="6" x2="18" y2="18" />
            </svg>
          </button>

          <h1
            tabindex="0"
            class="focus:outline-none text-left text-gray-800 dark:text-gray-100 font-lg font-bold tracking-normal leading-tight mb-4"
          >
            Basic Modal
          </h1>

          <p
            tabindex="0"
            class="focus:outline-none mb-8 text-sm text-gray-600 dark:text-gray-400 text-left font-normal"
          >
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
          </p>

          <div class="flex w-full justify-end">
            <button class="focus:ring-2 focus:ring-offset-2 focus:ring-indigo-600 focus:outline-none mr-3 bg-gray-100 dark:bg-gray-700 dark:border-gray-700 dark:hover:bg-gray-600 transition duration-150 text-gray-600 dark:text-gray-400 ease-in-out hover:border-gray-400 hover:bg-gray-300 border rounded px-8 py-2 text-sm">
              Cancel
            </button>
            <button class="focus:ring-2 focus:ring-offset-2 focus:ring-indigo-600 focus:outline-none transition duration-150 ease-in-out hover:bg-indigo-600 bg-indigo-700 rounded text-white px-4 sm:px-8 py-2 text-xs sm:text-sm">
              Confirm
            </button>
          </div>
        </div>
      </div>
    </div>
    """
  end
end
