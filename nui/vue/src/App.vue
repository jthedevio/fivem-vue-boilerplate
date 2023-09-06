<script setup>
import { onMounted, onUnmounted, computed } from 'vue';
import { useUISettingsStore } from './stores/ui-settings';
import nuiService from './services/nui-service';

const EVENT_LISTENER_MESSSAGE = 'message';

const uiSettingsStore = useUISettingsStore();

const uiIsVisible = computed(() => {
  return uiSettingsStore.getUIVisibility;
});

const addMessageEventListener = function () {
  window.addEventListener(EVENT_LISTENER_MESSSAGE, onMessageEvent);
}
const onMessageEvent = function(event) {
  const eventData = event.data;
    const uiVisibility = eventData.value;
    
    if (eventData.type === 'diplayNUI') {
      uiSettingsStore.setUIVisibility(uiVisibility);
    }
}

const removeMessageEventListener = function() {
  window.removeEventListener(EVENT_LISTENER_MESSSAGE, onMessageEvent);
}

const onCloseUIClick = async function() {
  await nuiService.call("hideUI")
}

const onClickSendTestDataToLua = async function() {
  await nuiService.call("sendTestDataToLua", {
    message: "Reach out to jthedev.io instructor for FiveM Courses."
  })
}

onMounted(() => {
  addMessageEventListener();
});
onUnmounted(() => {
  removeMessageEventListener()
});
</script>

<template>
  <div v-if="uiIsVisible">
    <button @click="onCloseUIClick">Close UI</button>
    <button @click="onClickSendTestDataToLua">Send Test Data To LUA</button>
    <br/>
    <span style="color: white;">Navigation Menu: </span>
    <br/>
    <router-link :to="{ name: 'home'}" class="button">Home</router-link>
    <br/>
    <router-view></router-view>
  </div>
</template>