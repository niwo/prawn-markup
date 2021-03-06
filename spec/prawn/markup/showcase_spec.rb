require 'spec_helper'
require 'pdf_helpers'

RSpec.describe 'Showcase' do
  include_context 'pdf_helpers'

  it 'renders showcase' do
    html = File.read('spec/fixtures/showcase.html')
    doc.markup_options = {
      heading1: { margin_top: 30, margin_bottom: 15 },
      heading2: { margin_top: 24, margin_bottom: 10 },
      heading3: { margin_top: 20, margin_bottom: 5 },
      table: {
        header: { background_color: 'DDDDDD', style: :italic }
      },
      iframe: {
        placeholder: ->(src) { "Embedded content: #{src}" }
      }
    }
    doc.markup(html)
    # lookatit
  end
end