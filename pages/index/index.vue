<template>
	<view class="content" style="padding: 10rpx;">
		<view style="border: 1rpx dashed #555555;">
			<Signature ref="sig" v-model="v"></Signature>
		</view>
		<button @tap="startSign">手动弹出</button>
		<text style="overflow-wrap: break-word;">{{v}}</text>
	</view>
</template>

<script>
	import Signature from '@/components/sin-signature/sin-signature.vue'
	export default {
		data() {
			return {
				v: ''
			}
		},
		components: {
			Signature,
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
