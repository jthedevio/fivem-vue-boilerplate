import { defineStore } from 'pinia'

export const useUISettingsStore = defineStore('uiSettings', {
  state: () => ({
    uiIsVisible: false
  }),
  getters: {
    getUIVisibility: (state) => state.uiIsVisible,
  },
  actions: {
    setUIVisibility(visibility) {
      this.uiIsVisible = visibility;
    },
  }
})
