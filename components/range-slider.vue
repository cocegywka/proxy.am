<template>
    <div class="range-slider" >
        <vue-slider v-model="value" v-bind="options" @change="changePrice">
            <template v-slot:step="{ active, value }"  >
                <div  :class="['vue-slider-mark-label', 'custom-label', { active }]">{{ value }}</div>
            </template>
        </vue-slider>
    </div>
</template>

<script>
export default {
    data: () => ({
        value: 30,
        options: {
            tooltip: 'always',
            marks: [0, 10, 30, 50, 80, 100]
        }
    }),
    methods: {
        changePrice() {
            this.$emit('toggle', this.value )
        }
    }
}
</script>

<style lang="scss">
    .range-slider{
        padding: 20px 10px 0;
        span{
            font-size: 12px;
            line-height: 22px;
            color: #797c85;
        }
        em{
            font-style: normal;
            font-size: 13px;
            line-height: 22px;
            color: #2b375d;
        }
        /* component style */
        .vue-slider-disabled {
            opacity: 0.5;
            cursor: not-allowed;
        }

        /* rail style */
        .vue-slider-rail {
            background-color: #ccc;
            border-radius: 15px;
        }

        /* process style */
        .vue-slider-process {
            // background-color: #3498db;
            border-radius: 15px;
        }

        /* mark style */
        .vue-slider-mark {
            z-index: 4;
        }
        .vue-slider-mark:first-child .vue-slider-mark-step, .vue-slider-mark:last-child .vue-slider-mark-step {
            display: none;
        }
        .vue-slider-mark-step {
            width: 100%;
            height: 100%;
            border-radius: 50%;
            background-color: rgba(0, 0, 0, 0.16);
        }
        .vue-slider-mark-label {
            font-size: 12px;
            color: #d8d8d8;
            white-space: nowrap;
            margin: 0;
        }
        /* dot style */
        .vue-slider-dot-handle {
            cursor: pointer;
            width: 50%;
            height: 50%;
            margin: 25% 0 0 25%;
            border-radius: 50%;
            background-color: #0080ec;
            box-sizing: border-box;
            // box-shadow: 0.5px 0.5px 2px 1px rgba(0, 0, 0, 0.32);
        }
        .vue-slider-dot-handle-focus {
            box-shadow: 0px 0px 1px 2px rgba(52, 152, 219, 0.36);
        }

        .vue-slider-dot-handle-disabled {
            cursor: not-allowed;
            background-color: #ccc;
        }

        .vue-slider-dot-tooltip-inner {
            font-size: 14px;
            white-space: nowrap;
            padding: 2px 5px;
            min-width: 20px;
            text-align: center;
            color: #fff;
            border-radius: 5px;
            border-color: #3498db;
            background-color: #3498db;
            box-sizing: content-box;
            span{
                color: #fff;
            }
        }
        .vue-slider-dot-tooltip-inner::after {
            content: "";
            position: absolute;
        }
        .vue-slider-dot-tooltip-inner-top::after {
            top: 100%;
            left: 50%;
            transform: translate(-50%, 0);
            height: 0;
            width: 0;
            border-color: transparent;
            border-style: solid;
            border-width: 5px;
            border-top-color: inherit;
        }
        .vue-slider-dot-tooltip-inner-bottom::after {
            bottom: 100%;
            left: 50%;
            transform: translate(-50%, 0);
            height: 0;
            width: 0;
            border-color: transparent;
            border-style: solid;
            border-width: 5px;
            border-bottom-color: inherit;
        }
        .vue-slider-dot-tooltip-inner-left::after {
            left: 100%;
            top: 50%;
            transform: translate(0, -50%);
            height: 0;
            width: 0;
            border-color: transparent;
            border-style: solid;
            border-width: 5px;
            border-left-color: inherit;
        }
        .vue-slider-dot-tooltip-inner-right::after {
            right: 100%;
            top: 50%;
            transform: translate(0, -50%);
            height: 0;
            width: 0;
            border-color: transparent;
            border-style: solid;
            border-width: 5px;
            border-right-color: inherit;
        }

        .vue-slider-dot-tooltip-wrapper {
            opacity: 0;
            transition: all 0.3s;
        }
        .vue-slider-dot-tooltip-wrapper-show {
            opacity: 1;
        }

        .vue-slider{
            height: 8px !important;
            .vue-slider-rail{
                background: #f7f7f9;
            }

        }
        .vue-slider-marks{
            top: -12px;
            margin: 0 auto;
            .vue-slider-mark-active{
                // .active{
                //     background: #4494ef;
                //     color: #fff;
                //     padding: 1px 7px;
                //     border-radius: 20px;
                // }
            }
            .custom-label{
                top: -18px;
            }
            .vue-slider-mark-label:last-child{
                background: #f7f7f9;
                width: 16px;
                height: 16px;
                border-radius: 100%;
                text-indent: -9999px;
            }
        }
    }
    
</style>