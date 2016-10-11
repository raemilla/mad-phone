class ShowStory extends React.Component {
  render () {
    let data = this.props.data,
    link = `/stories/${data.id}`
    return (
      <li>
      <p><a href={link}>{data.title}</a></p>
      <p>{data.user.name}</p>
      </li>
      )
  }
}

