def word_count(sentence)
  words = sentence.split(/\s+/)
  word_count_hash = Hash.new(0)

  words.each do |word|
    word = word.gsub(/\W+/, '')
    word_count_hash[word.downcase] += 1 unless word.empty?
  end

  word_count_hash
end

sentence = "Each man on earth has his own fate,
Each one his highway wide:
This one builds up, that one lays waste,
And that casts greedy eyes
O’er all the globe, to find somewhere
A land not yet enslaved,
Which he could conquer and then bear
With him into the grave.

This fellow in his neighbour's home
His host cleans out at cards,
While that one in a corner hones
A blade for brother's heart.
Then there's the solid citizen,
The worthy, pious kind,
Who'll creep up like a cat and then
Bide patiently his time
Until hard luck hits your affairs,
Then pounce! — Don't plead your cause:
Your wife's appeals and children's tears
Won't save you from his claws.
And that one, generous and grand,
The fervent patriot,
So deeply loves his native land,
So worries o'er its lot,
As from his country's heart he sucks
The blood as though it was water!...
The brethren meanwhile sit and look,
Their eyes agape like saucers!
And bleat like lambs: Perhaps it was
Thus ordained from on high.
That's how it's meant to be! Because
There's no God in the sky!
You pull your yoke until your breath
Gives out and you are done,
Yet pray for heaven after death?
In vain! There's none! There's none!
Your labour's lost. Come to! Come to!
In this world every one —
The princes, and the beggars, too,
They all are Adam's sons.
Both he... and he... What's this I prate?
What is it all about?
I banquet every single day,
Carouse day in, day out,
While you with envy burn and hate!
Don't scold: 'Twill do no good -
I'm deaf to you! I drink my own,
Not other people's blood!"
result = word_count(sentence)
puts result
