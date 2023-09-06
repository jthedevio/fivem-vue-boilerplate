# <h1 align="center">FiveM Vue Boilerplate</h1>
### <p align="center">Vue3 FiveM Boilerplate to quickly start building state-of-the-art NUIs without the hassle of setting everything from scratch :rocket:</p>

## Installation

### Prerequisites

Install [Node.JS](https://nodejs.org/en) version => 18

1. Download the Zip or clone the repository
```
git clone https://github.com/jthedevio/fivem-vue-boilerplate.git
```
2. Copy the ``fivem-vue-boilerplate`` folder under your server ``resources`` folder

3. Open your ``server.cfg`` and register the resource by placing ``ensure fivem-vue-boilerplate`` and saving the file

4. Open the cmd (Command Prompt) and go to the following location of the resource: ``fivem-vue-boilerplate\nui\vue``, and then type ``npm run build``

5. Connect to your FiveM server

6. Type the command ``/nui-display``

### :tada: You rock!

You have now sucessfully installed the FiveM Vue Boilerplate within your FiveM Server👏

## Making changes

Once you are ready to make your own changes, follow these steps:

1. Open the project in your favorite code editor (I like [Visual Studio Code](https://code.visualstudio.com/))
2. Add the changes you would like as per your needs.
3. If you want to test the changes in your local browser, type ``npm run dev`` and then open with your favorite browser the following URL ``http://127.0.0.1:5173/``
4. If you are ready to test the changes within your FiveM server then type ``npm run build``. This will compile the UI Web Application and place the compiled files under the ``dist`` folder.
   4.1 Connect to your server and type the command ``/nui-display``



## Coming Soon
[Tailwind CSS](https://tailwindcss.com/) Integration will be added soon. Stay tune.

## Technologies
- [Vue3](https://vuejs.org/)
- [Vue Router](https://router.vuejs.org/)
- [Pinia](https://pinia.vuejs.org/)
- [Vite](https://vitejs.dev/guide/)
- [Vitest](https://vitest.dev/)
- [Axios](https://axios-http.com/docs/intro)
