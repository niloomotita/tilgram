import {Helmet} from 'react-helmet'

export default () => (
  <div>
    <Helmet>
      <meta name='viewport' content='width=device-width,target-densitydpi=device-dpi, initial-scale=1.0, minimum-scale=0.51' />
      <title>Tilgram</title>
    </Helmet>
    <style jsx>{`
.content{
    display: flex;
    justify-content:center;
    align-items: center;
    padding: 20px;
    margin-top: 20px;
}
.header{
    display: flex;
    justify-content: center;
    align-items: flex-end;
    border-bottom: 2px solid black;
    padding: 20px;
}
.header__btn{
    display: flex;
    align-items: flex-end;
}
.profile-pic{
    width:50px;
    height: 50px;
    border: 1px solid transparent;
    border-radius: 50%;
    background-color: yellow;
    float: left;
    margin: 10px;
}
.til-card{
    width: 80%;
    border: 1px solid gray;
    padding: 20px;
}
    `}</style>
    <div className='header'>
      <div className='profile-pic' />
      <div className='header__btns'>
        <button className='header__home-btn'>Home</button>
        <button className='header__search-btn'>Search</button>
        <button className='header__notification-btn'>Notification</button>

      </div>

    </div>
    <section className='content'>
      <div className='til-card'>
        <div className='til-card__haed'>
          <span className='til-card__user'>omid hezaveh</span>
          <span className='til-card__date'>12,1,1399</span>
        </div>
        <div className='til-card__til'>
          <p><span> TIL </span>how to work with git</p>
        </div>
        <div className='til-card__bottom'>
          <button className='heart-btn'>like</button>
          <button className='share-btn'> share</button>
          <button className='heart-btn'>edit</button>
          <button className='share-btn'> delete</button>

        </div>
      </div>
    </section>
    <div className='footer' />
  </div>
)
