class FriendshipsController < ApplicationController
    
  def destroy #destroy friendship between users
    @friendship = current_user.friendships.where(friend_id: params[:id]).first 
    @friendship.destroy
    respond_to do |format|
       format.html { redirect_to my_friends_path, notice: 'Friend was successfully removed.' } 
    end
  end
end