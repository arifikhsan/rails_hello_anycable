// cable.js
import { createCable } from '@anycable/web'

export default createCable({
  // There are various options available. For example:
  // - Enable verbose logging
  logLevel: 'debug',
  // - Use the extended Action Cable protocol
  protocol: 'actioncable-v1-ext-json',
})
