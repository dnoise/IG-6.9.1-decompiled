.class public final Lcom/instagram/j/a;
.super Ljava/lang/Object;
.source "NewsfeedStoryUtil.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/instagram/j/d/c;Lcom/instagram/j/a/a/a;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-virtual {p1, p0}, Lcom/instagram/j/d/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/instagram/j/d/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 32
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/as;->grey_light:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 39
    invoke-static {v2, p1, p2}, Lcom/instagram/j/a;->a(Landroid/text/SpannableStringBuilder;Lcom/instagram/j/d/c;Lcom/instagram/j/a/a/a;)V

    .line 40
    return-object v2
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Lcom/instagram/j/a/a/a;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 109
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 110
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    new-instance v2, Lcom/instagram/j/e;

    invoke-direct {v2, p1, v1}, Lcom/instagram/j/e;-><init>(Lcom/instagram/j/a/a/a;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Lcom/instagram/j/d/c;Lcom/instagram/j/a/a/a;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/instagram/j/d/c;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/j/d/h;

    .line 48
    invoke-virtual {v0}, Lcom/instagram/j/d/h;->d()Ljava/lang/String;

    move-result-object v3

    .line 50
    const/4 v1, 0x0

    .line 51
    sget-object v4, Lcom/instagram/j/g;->a:[I

    invoke-virtual {v0}, Lcom/instagram/j/d/h;->c()Lcom/instagram/j/d/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/j/d/i;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 81
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Unhandled newsfeed story link type"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :pswitch_0
    new-instance v1, Lcom/instagram/j/b;

    invoke-direct {v1, p2, v3}, Lcom/instagram/j/b;-><init>(Lcom/instagram/j/a/a/a;Ljava/lang/String;)V

    .line 84
    :goto_1
    :pswitch_1
    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/instagram/j/d/h;->a()I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {v0}, Lcom/instagram/j/d/h;->b()I

    move-result v3

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 86
    invoke-virtual {v0}, Lcom/instagram/j/d/h;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/instagram/j/d/h;->b()I

    move-result v0

    const/16 v4, 0x21

    invoke-virtual {p0, v1, v3, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 62
    :pswitch_2
    new-instance v1, Lcom/instagram/j/c;

    invoke-direct {v1, p2, v3}, Lcom/instagram/j/c;-><init>(Lcom/instagram/j/a/a/a;Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :pswitch_3
    new-instance v1, Lcom/instagram/j/d;

    invoke-direct {v1, p2, v3}, Lcom/instagram/j/d;-><init>(Lcom/instagram/j/a/a/a;Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :cond_1
    const-string v1, "NewsfeedStoryUtil.addLink()"

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "length: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", start: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/instagram/j/d/h;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/instagram/j/d/h;->b()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/instagram/common/i/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 102
    :cond_2
    invoke-static {p0, p2}, Lcom/instagram/j/a;->a(Landroid/text/SpannableStringBuilder;Lcom/instagram/j/a/a/a;)V

    .line 103
    invoke-static {p0, p2}, Lcom/instagram/j/a;->b(Landroid/text/SpannableStringBuilder;Lcom/instagram/j/a/a/a;)V

    .line 104
    return-void

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Landroid/text/SpannableStringBuilder;Lcom/instagram/j/a/a/a;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 124
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->b(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 125
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    new-instance v2, Lcom/instagram/j/f;

    invoke-direct {v2, p1, v1}, Lcom/instagram/j/f;-><init>(Lcom/instagram/j/a/a/a;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method
