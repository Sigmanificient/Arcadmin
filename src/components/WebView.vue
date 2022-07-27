<template>
	<div class="container">
		<label class="button">
			<input class="toggle_theme" type="checkbox" v-model="dark" />
			<Moon v-if="!dark" />
			<Sun v-else />
		</label>

		<iframe
				:src="url"
				contenteditable="true"
				class="preview_iframe"
				:class="{ dark: dark }"
				width="100%"
				height="100%"
				frameborder="0"
				allowfullscreen
				@load="iframeStyles"
		/>
	</div>
</template>

<style lang="scss">
.container {
	position: relative;
}

.preview_iframe {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	height: 100%;
	transition: 100ms ease-in-out;
}

.dark {
	filter: hue-rotate(180deg) invert(0.9) saturate(1.2);
}

.button {
	position: absolute;
	display: flex;
	align-items: center;
	justify-content: center;

	bottom: 1em;
	left: 1em;
	z-index: 1;

	height: 38px;
	width: 38px;
	border-radius: 50%;
	background: rgba(26, 31, 37, 0.2);
	cursor: pointer;

	input {
		display: none;
	}
}
</style>

<script>
import Moon from "@/components/icons/moon.vue";
import Sun from "@/components/icons/sun.vue";

export default {
	name: "WebView",
	components: {
		Moon,
		Sun,
	},
	data() {
		return {
			dark: false,
		};
	},
	props: {
		url: {
			type: String,
			required: true,
		},
	},
	methods: {
		iframeStyles() {
			const frame = this.$refs.preview_iframe.contentWindow;

			console.log(frame);
		},
	},
};
</script>
