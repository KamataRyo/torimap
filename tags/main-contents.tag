<main-contents class="main-contents">

  <section class="item" each={ data }>
    <div class="wrap">
      <header class="item-header">
        <h2 class="item-title">{ title }</h2>
        <div class="item-toggle" show={ lat && lng }><i class="show-map glyphicon glyphicon-map-marker" onclick={ parent.routeMap } data-lat="{ lat }" data-lng={ lng }></i></div>
      </header>
      <div class="thumbnail-wrap" if={ image && image != '' }><img class="show-gallery thumbnail" src={ './thumbnails/' + image } onclick={ parent.routeGallery } data-image={ image }></div>
      <p class="item-description">{ content }</p>
      <table show={ type || tl }>
        <tr show={ type }>
          <th>渡り性</th>
          <td>{ type }</td>
        </tr>
        <tr show={ tl }>
          <th>全長</th>
          <td>{ tl }</td>
        </tr>
      </table>
    </div>
  </section>

  <script type="es6">
    if ( opts.data ) {
      this.data = opts.data
    }

    this.routeMap = function( e ) {
      window.pageYOffsetPrev = window.pageYOffset
      route( 'map/' + e.target.dataset.lat.trim() + ',' + e.target.dataset.lng.trim() )
    }.bind( this )

    this.routeGallery = function( e ) {
      window.pageYOffsetPrev = window.pageYOffset
      route( 'gallery/' + e.target.dataset.image.trim() )
    }.bind( this )

  </script>

</main-contents>
