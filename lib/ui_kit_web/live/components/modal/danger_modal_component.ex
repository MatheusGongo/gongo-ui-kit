defmodule UiKitWeb.DangerModalComponent do
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
        @click.away="open_danger_modal = false"
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
            @click="open_danger_modal = false"
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

          <div class="w-full flex items-center justify-start mb-1">
            <div class="rounded-full w-8 h-8 bg-red-200 text-center pl-1.5 pt-1.5 align-middle">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-5 w-5 text-red-500"
                viewBox="0 0 20 20"
                fill="currentColor"
              >
                <path
                  fill-rule="evenodd"
                  d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z"
                  clip-rule="evenodd"
                />
              </svg>
            </div>

            <h1
              tabindex="0"
              class="focus:outline-none text-center text-gray-800 dark:text-gray-100 font-lg font-bold tracking-normal leading-tight ml-2"
            >
              Delete 1 customer?
            </h1>
          </div>

          <p
            tabindex="0"
            class="focus:outline-none mb-6 mt-4 text-sm text-gray-600 dark:text-gray-400 text-left font-normal"
          >
            Semper eget duis at tellus at urna condimentum mattis pellentesque lacus suspendisse faucibus interdum.
          </p>

          <div class="flex items-center justify-end w-full">
            <button
              class="focus:ring-2 focus:ring-offset-2 focus:ring-indigo-600 focus:outline-none bg-gray-100 dark:bg-gray-700 dark:border-gray-700 dark:hover:bg-gray-600 transition duration-150 text-gray-600 dark:text-gray-400 ease-in-out hover:border-gray-400 hover:bg-gray-300 border rounded px-8 py-2 text-sm"
              @click="open_danger_modal = false"
            >
              Cancel
            </button>
            <button
              class="focus:ring-2 focus:ring-offset-2 focus:ring-red-500 focus:outline-none ml-3 transition duration-150 ease-in-out hover:bg-red-500 bg-red-600 rounded text-white px-4 sm:px-8 py-2 text-xs sm:text-sm"
              @click="open_danger_modal = false"
            >
              Yes, Delete it
            </button>
          </div>
        </div>
      </div>
    </div>
    """
  end
end
