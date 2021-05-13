<template>
	<view class="content" style="padding: 10rpx;">
		<view style="border: 1rpx dashed #555555;">
			<uniSignature ref="sig" v-model="v"></uniSignature>
		</view>
		<button @tap="startSign">手动弹出</button>
		<text style="overflow-wrap: break-word;">{{v}}</text>
	</view>
</template>

<script>
	import uniSignature from '@/components/uniSignature/index.vue'
	export default {
		data() {
			return {
				v: ''
			}
		},
		components: {
			uniSignature,
		},
		onLoad() {

		},
		methods: {
			async startSign() {
				let s = await this.$refs.sig.getSyncSignature();
				console.log('组件版本', this.$refs.sig.VERSION);
				console.log('签名数据', s);
			}
		}
	}
</script>

<style>
</style>
