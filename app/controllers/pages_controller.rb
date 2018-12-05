class PagesController < ApplicationController

    def index
        @sins = Sin.limit(5)
    end
end
