<div>
    <div class="container" style="padding:30px 0 ;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6">
                                Add New Slider
                            </div>
                            <div class="col-md-6">
                                <a href="{{route('admin.homeslider')}}" class="btn btn-success pull-right">All Slide</a>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                         @if(Session::has('message'))
                            <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                        @endif
                            <form action="" class="form-horizontal" enctype="multipart/form-data" wire:click.prevent="addSlide">
                            <div class="form-group">
                                <label for="" class="control-label col-md-4">Title</label>
                                <div class="col-md-4">
                                    <input placeholder="Title" class="form-control input-md" type="text" wire:model="title" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="control-label col-md-4">Subtitle</label>
                                <div class="col-md-4">
                                    <input placeholder="Subtitle" class="form-control input-md" type="text" wire:model="subtitle" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="control-label col-md-4">Price</label>
                                <div class="col-md-4">
                                    <input placeholder="Price" class="form-control input-md" type="text" wire:model="price" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="control-label col-md-4">Link</label>
                                <div class="col-md-4">
                                    <input placeholder="Link" class="form-control input-md" type="text" wire:model="link" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="control-label col-md-4">Image</label>
                                <div class="col-md-4">
                                    <input placeholder="Image" class="input-file" type="file" wire:model="image" />
                                    @if($image)
                                        <img src="{{$image->tempraryUrl()}}" width="120" alt="">
                                    @endif
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="control-label col-md-4 ">Status</label>
                                <div class="col-md-4">
                                    <select name="" class="form-control" wire:model="status" id="">
                                        <option value="0">Inactive</option>
                                        <option value="1">Active</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="control-label col-md-4 "></label>
                                <div class="col-md-4">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
