# uniSignature
用于uni-app的签名组件，支持H5、小程序、APP，可导出svg矢量图片。

可以使用v-model进行绑定，或者通过方法.getSyncSignature()调用并获取数据。

### 使用
```html
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
	import Signature from '@/components/sin-signature/index.vue'
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

```


### 运行截图

![图片1](https://ishop-static-qn.inruan.com/Fqz4jBDVJEq5L3rNQ9BQnt7qxU6W.png)
![图片2](https://ishop-static-qn.inruan.com/Fi23tBj4E4TZfd8JxIKVBasUUoes.png)
![图片3](https://ishop-static-qn.inruan.com/Fqb3o3dG_Zpv063CPow97AiWeT90.png)


[在GitHub上点击查看更多](https://github.com/sintrb/uniSignature)

[在DCloud插件市场查看](https://ext.dcloud.net.cn/plugin?id=5010)
