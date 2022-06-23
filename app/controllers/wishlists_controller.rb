class WishlistsController < ApplicationController
  include WishlistsHelper
  before_action :authenticate_user!
  before_action :only_current_wishlist


  # GET /wishlists or /wishlists.json
  def index
    @wishlists = Wishlist.all
  end

  # GET /wishlists/1 or /wishlists/1.json
  def show
    @wishlist = Wishlist.find(params[:id])

  end

  # GET /wishlists/new
  def new
  end

  # GET /wishlists/1/edit
  def edit
  end

  # POST /wishlists or /wishlists.json
  def create

  end

  # PATCH/PUT /wishlists/1 or /wishlists/1.json
  def update
    respond_to do |format|
      if @wishlist.update(wishlist_params)
        format.html { redirect_to wishlist_url(@wishlist), notice: "Wishlist was successfully updated." }
        format.json { render :show, status: :ok, location: @wishlist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wishlist.errors, status: :unprocessable_entity }

      end
    end
  end

  # DELETE /wishlists/1 or /wishlists/1.json
  def destroy
    @wishlist.destroy

    respond_to do |format|
      format.html { redirect_to wishlists_url, notice: "Wishlist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def wishlist_params
      params.require(:wishlist).permit(:limit, :user_id, :dog_id, fan: current_user)
    end
end
