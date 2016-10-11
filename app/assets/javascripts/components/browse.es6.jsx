class Browse extends React.Component {
  constructor() {
    super();
    this.state = {
      show: "mostPopular"
    }
    this.clickMostPopular= this.clickMostPopular.bind(this)
    this.clickMostRecentlyCompleted= this.clickMostRecentlyCompleted.bind(this)
    this.clickMostRecentlyUpdated= this.clickMostRecentlyUpdated.bind(this)
  }
  clickMostPopular() {
    this.setState({show: "mostPopular"})
  }
  clickMostRecentlyCompleted() {
    this.setState({show: "mostRecentlyCompleted"})
  }
  clickMostRecentlyUpdated() {
    this.setState({show: "mostRecentlyUpdated"})
  }


  render () {
    let show
    if (this.state.show === "mostPopular") {
       show = <MostPopular/>
     } else if (this.state.show === "mostRecentlyCompleted") {
       show = <MostRecentlyCompleted/>
     } else if (this.state.show === "mostRecentlyUpdated") {
       show = <MostRecentlyUpdated/>
     }
    return (
      <div>
      <span onClick={this.clickMostPopular}>Top 10</span>
      <span onClick={this.clickMostRecentlyCompleted}>Recently Completed</span>
      <span onClick={this.clickMostRecentlyUpdated}>Recently Updated</span>
      <span>{show}</span>
      </div>
      )
  }
}

