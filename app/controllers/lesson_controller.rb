class LessonController < ApplicationController
    def step1
        render plain: "こんにちは、#{params[:name]}さん"
    end

    def step2
        render plain: params[:controller] + "#" + params[:action]
    end

    def step3
        rendirect_to action: "step4"
    end

    def step4
        render plain: "step4に移動しました。"
    end

    def step5
        flash[:notice] = "step6に移動します。"
    end

    def step6
        render plain: flash[:notice]
    end

    def step7
        @price = (2000 * 1.08).floor
    end
end
