<template>
	<TheHeader />
	<main class="main" :data-items="items.length">
		<WebView
				v-for="item in items"
				:url="item"
				:key="item"
		/>
	</main>
</template>

<script>
import WebView from "@/components/WebView.vue";
import TheHeader from "@/components/TheHeader.vue";

export default {
	data() {
		return {
			items: [
				"/color/4343a5",
				"/color/a54343",
			],
		};
	},

	components: {
		TheHeader,
		WebView,
	},
};
</script>


<style lang="scss">
.main {
	display: flex;
	justify-content: center;

	height: calc(100vh - 48px);
	box-sizing: border-box;
	grid-gap: 8px;
	padding: 8px;

	& > * {
	  width: 100%;
  }
}

.main[data-items="4"] {
	display: grid;
	grid-template-columns: 1fr 1fr;
	grid-template-rows: 1fr 1fr;
}
</style>