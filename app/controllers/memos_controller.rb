class MemosController < ApplicationController

  def create
    @memo = Memo.new
    @memo.save(memo_params)
  end

  def index
    @memo = Memo.new
    @memos = Memo.all
  end

  def show
    @memo = Memo.find(params[:id])
  end

  def edit
    @memo = Memo.find(params[:id])
  end

  def update
    @memo = Memo.find(params[:id])
    @memo.update(memo_params)
  end

  def destroy
    @memo = Memo.find(params[:id])
    @memo.destroy
  end

  private
    def memo_params
      params.require(:memo).permit(:title, :message, :level, :code)
    end

end
