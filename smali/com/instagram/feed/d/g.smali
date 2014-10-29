.class final Lcom/instagram/feed/d/g;
.super Ljava/lang/Object;
.source "CommentRenderer.java"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x6

    sput v0, Lcom/instagram/feed/d/g;->a:I

    return-void
.end method

.method static a(Ljava/lang/String;ILandroid/text/TextPaint;I)I
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 65
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v8, v7

    move v9, v2

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Landroid/text/TextPaint;I)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x5

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v1, p1, p2}, Lcom/instagram/feed/d/g;->a(Ljava/lang/String;ILandroid/text/TextPaint;I)I

    move-result v1

    .line 152
    if-gt v1, v5, :cond_0

    .line 176
    :goto_0
    return v0

    .line 155
    :cond_0
    sget v2, Lcom/instagram/feed/d/g;->a:I

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 159
    :cond_1
    add-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    .line 160
    invoke-static {p0, v3, p1, p2}, Lcom/instagram/feed/d/g;->a(Ljava/lang/String;ILandroid/text/TextPaint;I)I

    move-result v4

    .line 162
    if-lt v4, v5, :cond_3

    .line 163
    if-le v4, v5, :cond_2

    move v1, v3

    .line 175
    :goto_1
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x14

    if-le v0, v4, :cond_1

    move v0, v3

    .line 176
    goto :goto_0

    .line 167
    :cond_2
    add-int/lit8 v2, v3, 0x1

    invoke-static {p0, v2, p1, p2}, Lcom/instagram/feed/d/g;->a(Ljava/lang/String;ILandroid/text/TextPaint;I)I

    move-result v2

    .line 169
    if-le v2, v5, :cond_3

    move v0, v3

    .line 170
    goto :goto_0

    :cond_3
    move v2, v3

    .line 172
    goto :goto_1
.end method

.method static a(Landroid/content/res/Resources;Lcom/instagram/feed/d/b;Landroid/text/TextPaint;I)Landroid/text/SpannableStringBuilder;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/instagram/feed/d/b;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/feed/d/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/instagram/feed/d/g;->a(Landroid/content/res/Resources;Ljava/lang/String;Landroid/text/TextPaint;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 59
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/instagram/feed/d/g;->a(Landroid/text/SpannableStringBuilder;Lcom/instagram/feed/d/b;Z)V

    .line 60
    invoke-static {v0, p1}, Lcom/instagram/feed/d/g;->a(Landroid/text/SpannableStringBuilder;Lcom/instagram/feed/d/b;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/res/Resources;Ljava/lang/String;Landroid/text/TextPaint;I)Landroid/text/SpannableStringBuilder;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-static {p1, p2, p3}, Lcom/instagram/feed/d/g;->a(Ljava/lang/String;Landroid/text/TextPaint;I)I

    move-result v3

    .line 123
    if-nez v3, :cond_0

    .line 124
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 147
    :goto_0
    return-object v0

    :cond_0
    move v1, v2

    .line 127
    :goto_1
    const/16 v0, 0x32

    if-ge v1, v0, :cond_3

    .line 128
    sget v0, Lcom/instagram/feed/d/g;->a:I

    sub-int v0, v3, v0

    sub-int/2addr v0, v1

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 130
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    :goto_2
    if-nez v0, :cond_1

    .line 136
    sget v0, Lcom/instagram/feed/d/g;->a:I

    sub-int v0, v3, v0

    .line 138
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 140
    const-string v2, " [...]"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 141
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget v3, Lcom/facebook/as;->grey_light:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sget v3, Lcom/instagram/feed/d/g;->a:I

    add-int/2addr v3, v0

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v1

    .line 147
    goto :goto_0

    .line 127
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public static a(Lcom/instagram/feed/d/b;Z)Landroid/text/SpannableStringBuilder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/instagram/feed/d/b;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    .line 46
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/instagram/feed/d/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 47
    invoke-static {v0, p0, p1}, Lcom/instagram/feed/d/g;->a(Landroid/text/SpannableStringBuilder;Lcom/instagram/feed/d/b;Z)V

    .line 48
    invoke-static {v0, p0}, Lcom/instagram/feed/d/g;->a(Landroid/text/SpannableStringBuilder;Lcom/instagram/feed/d/b;)V

    goto :goto_0
.end method

.method static a(Lcom/instagram/feed/d/b;Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/instagram/feed/d/b;->g()Lcom/instagram/user/c/a;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v1

    .line 34
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 35
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 36
    new-instance v3, Lcom/instagram/feed/d/a;

    const-string v4, "comment_owner"

    invoke-direct {v3, v4, v0, v1}, Lcom/instagram/feed/d/a;-><init>(Ljava/lang/String;Lcom/instagram/user/c/a;Lcom/instagram/feed/d/l;)V

    .line 37
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 38
    const-string v0, " "

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 39
    return-object v2
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Lcom/instagram/feed/d/b;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 98
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 99
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    new-instance v2, Lcom/instagram/feed/d/i;

    invoke-direct {v2, v1, p1}, Lcom/instagram/feed/d/i;-><init>(Ljava/lang/String;Lcom/instagram/feed/d/b;)V

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Lcom/instagram/feed/d/b;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 80
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->b(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 81
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    new-instance v2, Lcom/instagram/feed/d/h;

    invoke-direct {v2, p2, v1, p1}, Lcom/instagram/feed/d/h;-><init>(ZLjava/lang/String;Lcom/instagram/feed/d/b;)V

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method
