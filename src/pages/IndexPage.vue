<template>
  <div class="fit card q-pa-md"
       :class="$q.screen.lt.md ? 'custom-rounded-borders' : 'card custom-rounded-borders-right'"
       style="display: flex">
    index
  </div>
</template>

<script>
import {defineComponent} from 'vue'
import {ref} from 'vue'

export default defineComponent({
  name: 'IndexPage',
  setup() {
    return {
    }
  }
})
</script>
