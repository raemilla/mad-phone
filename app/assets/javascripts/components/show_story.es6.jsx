class ShowStory extends React.Component {
  render () {
    let data = this.props.data,
    storyLink = `/stories/${data.id}`,
    userLink = `/users/${data.user.id}`
    var cts = data.created_at,
      cdate = (new Date(cts)).toLocaleString();
    return (
      <div className="container">
      <div className="jumbotron">
          <div className="media-left">
            <div><h2>{data.sum}</h2></div>
          </div>
          <div className="media-body">
            <p className="media-heading"><a href={storyLink}>{data.title}</a></p>
            <p className="additional-info">created by <a href={userLink}>{data.user.name}</a> on {cdate}</p>
          </div>
          </div>
      </div>
      )
  }
}

