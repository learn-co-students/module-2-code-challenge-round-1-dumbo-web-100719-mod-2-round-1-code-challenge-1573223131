class AppearancesController < ApplicationController
    


def new
@appearance = Appearance.new
end

def create
@appearance = Appearance.create(post_params(:episode_id, :guest_id, :guest_rating))
redirect_to episode_path
end

end
