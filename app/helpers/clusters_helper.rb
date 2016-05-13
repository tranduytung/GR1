module ClustersHelper
  def current_cluster? cluster
    current_cluster == cluster
  end

  def corrent_cluster
    @cluster = Cluster.find_by id: params[:cluster_id]
    unless current_cluster? @cluster
      flash[:danger] = t "message.you_are_not_cluster_correct"
      redirect_to root_path
    end
  end
end
