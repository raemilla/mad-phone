class NewSentence extends React.Component {
  constructor () {
    super ()
    this.state = {
      sentence: []
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
    }
    )
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

    return (
      <div>
      <p>{this.state.sentence.text}</p>
      <form onSubmit={this.handleSubmit}>
        <textarea placeholder="continue the story" ref="sentence" name="sentence"></textarea><br></br>
        <input type="submit"/>
      </form>
      </div>
    )
  }
}
