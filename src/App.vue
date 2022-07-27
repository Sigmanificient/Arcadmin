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
				"https://proxmox.pikacloud.ga",
				"http://127.0.0.1:80",
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

	height: 100vh;
	box-sizing: border-box;
	background: #496587;
	grid-gap: 2px;
	padding: 2px;

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
