class MemosController < ApplicationController

  def index
    @memos = Memo.all.order("created_at  DESC")
    render json: {status: 'succes' ,message: '全部送ったよ' , data: @memos}
  end
  
  def create
    memo = Memo.new(strong_params)
    if memo.save
      render json:{ status: 'success',data: memo}
    else
      render json: {status: 'error', data: memo.erros}
    end
  end

  def destroy
    @memo = Memo.find(params[:id])
    @memo.destroy
    render json: {status: 'success', message: '消せたで', data: @memo}
  end

  

  def update
    @memo = Memo.find(params[:id])
    if @memo.update(strong_params)
      render json: {status: 'success', message:'更新', data: @memo}
    else
      render json: {status:'success', message: '失敗', data: @memo.errors }
    end
  end

  private
  def strong_params
    params.require(:memo).permit(:id,:title,:image,:body,:memomemo)
  end

 
end
