//fa
import { config, library, dom } from '@fortawesome/fontawesome-svg-core'

import {faThumbsUp as faThumbsUpregular} from '@fortawesome/free-regular-svg-icons'
import {faThumbsUp as faThumbsUpsolid} from '@fortawesome/free-solid-svg-icons'
config.mutateApproach = 'sync'
library.add(faThumbsUpregular, faThumbsUpsolid)
dom.watch()