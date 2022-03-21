defmodule UiKitWeb.BasicModalComponent do
  use UiKitWeb, :live_component

  def render(assigns) do
    ~H"""
        <div role="alert" class="container mx-auto w-11/12 md:w-2/3 max-w-lg flex justify-center">
            <div class="relative w-11/12 sm:w-8/12 md:w-9/12 bg-white dark:bg-gray-800 shadow pt-10 pb-8 rounded">
                <div class="flex flex-col items-center px-4 md:px-12">
                    <img src="https://i.ibb.co/QDMrqK5/Saly-10.png" />
                    <p class="text-base sm:text-lg md:text-2xl font-bold md:leading-6 mt-6 text-gray-800 text-center dark:text-gray-100">Don’t miss any Update</p>
                    <p class="text-xs sm:text-sm leading-5 mt-2 sm:mt-4 text-center text-gray-600 dark:text-gray-300">Get yourself ready for the whole new collection of premium and attractive products made just for you.</p>
                    <div class="flex items-center mt-4 sm:mt-6 w-full">
                        <div class="bg-gray-50 border rounded border-gray-200 dark:border-gray-700 dark:bg-gray-700 w-full">
                            <input class="w-full focus:outline-none pl-4 py-3 text-sm leading-none text-gray-600 dark:text-gray-100 bg-transparent placeholder-gray-600 dark:placeholder-gray-100" placeholder="Enter your email" />
                        </div>
                        <button class="px-3 py-3 bg-indigo-700 dark:bg-indigo-600 focus:outline-none hover:bg-opacity-80 ml-2 rounded">
                            <img src="https://tuk-cdn.s3.amazonaws.com/can-uploader/Modal_39-svg1.svg" alt="message icon"/>
                        </button>
                    </div>
                </div>
                <div class="cursor-pointer absolute top-0 right-0 m-3 text-gray-800 hover:text-gray-600 dark:text-gray-100 dark:hover:text-gray-200 transition duration-150 ease-in-out" onclick="modalHandler()">
                    <svg xmlns="http://www.w3.org/2000/svg" aria-label="Close" class="icon icon-tabler icon-tabler-x" width="20" height="20" viewBox="0 0 24 24" stroke-width="2.5" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" />
                        <line x1="18" y1="6" x2="6" y2="18" />
                        <line x1="6" y1="6" x2="18" y2="18" />
                    </svg>
                </div>
            </div>
        </div>
    """
  end

end
