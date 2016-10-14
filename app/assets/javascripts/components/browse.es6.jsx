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
  clickMostPopular(event) {
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
    let MostPopularclasses
    let MostRecentlyCompletedClasses
    let MostRecentlyUpdatedClasses
    if (this.state.show === "mostPopular") {
       show = <MostPopular/>
       MostPopularclasses = "nav-link active"
       MostRecentlyCompletedClasses = "nav-link"
       MostRecentlyUpdatedClasses = "nav-link"
     } else if (this.state.show === "mostRecentlyCompleted") {
       show = <MostRecentlyCompleted/>
       MostPopularclasses = "nav-link"
       MostRecentlyCompletedClasses = "nav-link active"
       MostRecentlyUpdatedClasses = "nav-link"
     } else if (this.state.show === "mostRecentlyUpdated") {
       show = <MostRecentlyUpdated/>
       MostPopularclasses = "nav-link"
       MostRecentlyCompletedClasses = "nav-link"
       MostRecentlyUpdatedClasses = "nav-link active"
     }
    return (
      <div>
        <div className="container">
          <ul className="nav nav-tabs">
            <li className="nav-item header" onClick={this.clickMostPopular}><a className={MostPopularclasses}>Top 10</a></li>
            <li className="nav-item header" onClick={this.clickMostRecentlyCompleted}><a className={MostRecentlyCompletedClasses}>Recently Completed </a></li>
            <li className="nav-item header" onClick={this.clickMostRecentlyUpdated}><a className={MostRecentlyUpdatedClasses}>Recently Updated </a></li>
          </ul>
        </div>
      <span>{show}</span>
      </div>
      )
  }
}
