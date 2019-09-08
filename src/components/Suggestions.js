import React from 'react'

const Suggestions = (props) => {
  const options = props.results.map(r => (
    <li key={r.id}>
      {r.tags}
    </li>
  ))
  return <ul className="suggestions">{options}</ul>
}

export default Suggestions