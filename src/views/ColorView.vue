<template>
	<main :style="`background-color: ${color}`">

	</main>
</template>

<script>
export default {
	name: "ColorView",
	data() {
		return {
			color: this.$route.params.color,
		}
	}
}
</script>

<style scoped>
main {
	height: 100vh;
	width: 100vw;
}
</style>