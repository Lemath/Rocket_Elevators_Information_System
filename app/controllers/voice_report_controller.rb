class VoiceReportController < ApplicationController
  def report
    response = client.synthesize_speech input: {'text': 'hello World, how are you today?'}, voice: {'language_code': 'en-US'}, audio_config: {'audio_encoding': 'MP3'}
    print response
    File.open Rails.root.join(
      'public',
      'output',
      "#{'output'}.#{'mp3'}"
    ),
      'wb' do |file|
        file.write response.audio_content
    end
    send_data response
  end

  def client
    Google::Cloud::TextToSpeech.text_to_speech
  end

  def voice
    {language_code: 'en-US'}
  end

  def audio
    {audio_encoding: 'MP3'}
  end

end
