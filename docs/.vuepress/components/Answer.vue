<template>
  <div class="q-container" v-bind:class="checked ? cls : ''">
    <input type="checkbox" v-model="checked" />
    <label>
      <slot></slot>
    </label>
  </div>
</template>

<script>
export default {
  props: {
    correct: {
      type: String,
      default: "false"
    }
  },
  data() {
    return {
      checked: false,
      cls: this.correct == "true" ? "green" : "red"
    };
  }
};
</script>

<style scoped>
.q-container {
  display: flex;
  align-items: center;
}
.q-container label {
  margin-left: 2rem;
}
.q-container input[type="checkbox"] {
  position: relative;
  margin: 1rem;
  padding: 1rem;
}
.green {
  background: rgba(62, 175, 124, 0.4);
}
.red {
  background: rgba(175, 62, 62, 0.4);
}
</style>
