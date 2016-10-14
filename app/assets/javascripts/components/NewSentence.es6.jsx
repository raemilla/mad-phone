class NewSentence extends React.Component {
  constructor () {
    super ()
    this.state = {
      sentence: [],
      errors: false
    }
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  componentWillMount() {
    this.getNewSentence()
  }

   handleSubmit(event) {
    event.preventDefault()
    var storyID = this.state.sentence.story_id,
    textfield = this.refs.sentence
    text = textfield.value;
    $.ajax({
      url: "/sentences",
      method: 'post',
      data: {
        story_id: storyID,
        sentence: text
      }
    }).done((response) =>{
      this.getNewSentence()
      textfield.value =""
      this.setState({
        errors: false
      })
    }).fail((error) => {
      this.setState({
        errors: true
      })
    })
  }

  getNewSentence() {
    $.ajax({
      url: "/sentences",
      method: 'get'
    }).done((response) => {
      this.setState({
        sentence: response
      })
    })
  }

  render () {
    let sentenceWaiter
    if (this.state.sentence.text) {
      sentenceWaiter = <div className="contribute-sentence-page">

      <p className="sentence-header">"{this.state.sentence.text}"</p>

      <form className="new-contribute-form form-inline" onSubmit={this.handleSubmit}>
        <div className="form-group">
        <input className="form-control" id="add-sentence-text" placeholder="continue the story" ref="sentence" name="sentence"/>
        </div>
        <input className="btn btn-primary" type="submit"/>
      </form>
      </div>
    } else {
      sentenceWaiter = <div>
        <p>You contributed to all of the stories!</p>
        <p>Why not create your own?</p>
        <a href="/stories/new">Create a story </a>
      </div>
    }

    return (
      <div>
      {sentenceWaiter}
      {this.state.errors ? <div className="alert alert-danger alert-dismissible" role="alert">
        <button type="button" className="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <strong>Uh oh!</strong> You can only write one sentence at a time.
      </div> : null}
      </div>
    )
  }
}
