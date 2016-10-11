class MostPopular extends React.Component {
  constructor() {
    super();
    this.state = {
      stories: []
    }
  }
  componentWillMount() {
     $.ajax({
      url: "/stories",
      method: 'GET',
      data: { list: "MostPopular" }
    }).done((response) => {
      debugger
      this.setState({
        stories: response
      })
    })
  }

  render () {
    return (
      <div>MP</div>
      )
  }
}

