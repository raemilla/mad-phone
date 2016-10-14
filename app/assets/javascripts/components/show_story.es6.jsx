class ShowStory extends React.Component {
  render () {
    let data = this.props.data,
    storyLink = `/stories/${data.id}`,
    userLink = `/users/${data.user.id}`
    var cts = data.created_at,
      cdate = (new Date(cts)).toLocaleString();
    return (
      <div className="container">
      <br></br>
      <div className="well">
          <div className="media-left">
            <div><h2>{data.sum}</h2></div>
          </div>
          <div className="media-body">
            <h3 className="media-heading"><a href={storyLink}>{data.title}</a></h3>
            <p className="additional-info">created by <a href={userLink}>{data.user.name}</a> on {cdate}</p>
          </div>
          </div>
      </div>
      )
  }
}

