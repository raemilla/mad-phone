class ShowStory extends React.Component {
  render () {
    let data = this.props.data
    return (
      <li>
      <p>{data.title}</p>
      <p>{data.user.name}</p>
      </li>
      )
  }
}

