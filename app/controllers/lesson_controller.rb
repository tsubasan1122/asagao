class LessonController < ApplicationController
  def step1
    render plain: "こんにちは、#{params[:name]}さん"
  end

  def step2
    render plain: params[:controller] + "#" + params[:action]
  end

  def step3
    redirect_to action: "step4"
  end

  def step4
    render plain: "step4に移動しました"
  end

  def step5
    flash[:notice] = "step6に移動します"
    redirect_to action: "step6"
  end

  def step6
    render plain: flash[:notice]
  end

  def step11
    @poplation = 704414
    @surface = 141.31
  end

  def step12
    @time = Time.current
  end

  def step14
    @message = "ご機嫌いかが,\nrailsの勉強を頑張頑張りまよう"
  end
end
