.class final Lcom/instagram/feed/d/aa;
.super Ljava/lang/Object;
.source "MediaRenderer.java"


# static fields
.field private static final a:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    .line 39
    sput-object v0, Lcom/instagram/feed/d/aa;->a:Ljava/text/DecimalFormat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 40
    sget-object v0, Lcom/instagram/feed/d/aa;->a:Ljava/text/DecimalFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 41
    return-void
.end method

.method private static a(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;ILcom/instagram/feed/d/b;Landroid/text/TextPaint;I)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-virtual {p3}, Lcom/instagram/feed/d/b;->g()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 257
    new-instance v1, Lcom/instagram/feed/d/a;

    const-string v2, "comment_owner"

    invoke-virtual {p3}, Lcom/instagram/feed/d/b;->g()Lcom/instagram/user/c/a;

    move-result-object v3

    invoke-virtual {p3}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/feed/d/a;-><init>(Ljava/lang/String;Lcom/instagram/user/c/a;Lcom/instagram/feed/d/l;)V

    .line 259
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    const/16 v2, 0x21

    invoke-virtual {p1, v1, p2, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 260
    const-string v0, " "

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/instagram/feed/d/f;->a()Lcom/instagram/feed/d/f;

    move-result-object v1

    invoke-virtual {v1, p0, p3, p4, p5}, Lcom/instagram/feed/d/f;->a(Landroid/content/res/Resources;Lcom/instagram/feed/d/b;Landroid/text/TextPaint;I)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 265
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 266
    return v0
.end method

.method private static a(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;Landroid/text/SpannableStringBuilder;I)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 275
    new-instance v0, Lcom/instagram/feed/d/ac;

    invoke-direct {v0, p0, p1}, Lcom/instagram/feed/d/ac;-><init>(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;)V

    .line 290
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->s()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 291
    sget v1, Lcom/facebook/az;->view_1_comment:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 297
    :goto_0
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, p3

    add-int/2addr v1, p3

    const/16 v2, 0x21

    invoke-virtual {p2, v0, p3, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 300
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 302
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 304
    return v0

    .line 293
    :cond_0
    sget v1, Lcom/facebook/az;->view_all_x_comments:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->s()Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private static a(Landroid/content/res/Resources;IF)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 153
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 154
    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 155
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v1, v2}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v1

    float-to-int v1, v1

    .line 156
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;F)F

    move-result v2

    float-to-int v2, v2

    .line 157
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 158
    return-object v0
.end method

.method private static a(Ljava/util/List;I)Lcom/instagram/feed/d/b;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/b;",
            ">;I)",
            "Lcom/instagram/feed/d/b;"
        }
    .end annotation

    .prologue
    .line 240
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-object v0

    .line 242
    :catch_0
    move-exception v0

    const-string v0, "MediaRenderer"

    const-string v1, "Attempt to get a comment that does not exist. index = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;)Ljava/lang/CharSequence;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 53
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v0, " "

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 54
    new-instance v0, Landroid/text/style/ImageSpan;

    sget v2, Lcom/facebook/au;->explore_attribution:I

    const/high16 v3, 0x4080

    invoke-static {p0, v2, v3}, Lcom/instagram/feed/d/aa;->a(Landroid/content/res/Resources;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 62
    new-instance v0, Lcom/instagram/feed/d/b;

    invoke-direct {v0}, Lcom/instagram/feed/d/b;-><init>()V

    .line 63
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/feed/d/b;->a(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, p1}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/l;)V

    .line 65
    invoke-static {}, Lcom/instagram/feed/d/f;->a()Lcom/instagram/feed/d/f;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lcom/instagram/feed/d/f;->a(Lcom/instagram/feed/d/b;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 70
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x40

    if-ne v3, v4, :cond_0

    .line 71
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 69
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 75
    return-object v1
.end method

.method static a(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;Landroid/text/TextPaint;I)Ljava/lang/CharSequence;
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/instagram/feed/d/l;->A()Lcom/instagram/feed/d/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/feed/d/e;->c()Ljava/util/List;

    move-result-object v14

    .line 165
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 166
    const/4 v4, 0x0

    .line 168
    if-eqz v14, :cond_3

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    move v8, v2

    .line 169
    :goto_0
    const/4 v9, 0x0

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/instagram/feed/d/l;->n()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 173
    const/4 v2, 0x0

    .line 177
    :cond_0
    const/4 v5, 0x6

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v12, v5

    move v13, v2

    .line 181
    :goto_1
    if-eqz v13, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/instagram/feed/d/l;->n()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    const/4 v2, 0x1

    move v11, v2

    .line 182
    :goto_2
    if-eqz v11, :cond_7

    const/4 v2, 0x1

    :goto_3
    add-int v15, v12, v2

    .line 184
    const/4 v2, 0x0

    move v10, v2

    :goto_4
    if-ge v10, v15, :cond_c

    .line 185
    const/4 v6, 0x0

    .line 186
    const/4 v2, 0x0

    .line 187
    if-nez v10, :cond_b

    .line 191
    const/4 v5, 0x0

    invoke-static {v14, v5}, Lcom/instagram/feed/d/aa;->a(Ljava/util/List;I)Lcom/instagram/feed/d/b;

    move-result-object v5

    .line 194
    if-eqz v5, :cond_a

    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/instagram/feed/d/l;->Z()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 197
    invoke-virtual {v5}, Lcom/instagram/feed/d/b;->i()I

    move-result v7

    sget v16, Lcom/instagram/feed/d/d;->b:I

    move/from16 v0, v16

    if-ne v7, v0, :cond_8

    .line 223
    :cond_2
    :goto_5
    if-eqz v5, :cond_11

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move/from16 v7, p3

    .line 224
    invoke-static/range {v2 .. v7}, Lcom/instagram/feed/d/aa;->a(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;ILcom/instagram/feed/d/b;Landroid/text/TextPaint;I)I

    move-result v4

    move v2, v9

    .line 184
    :goto_6
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    move v9, v2

    goto :goto_4

    .line 168
    :cond_3
    const/4 v2, 0x0

    move v8, v2

    goto :goto_0

    .line 176
    :cond_4
    add-int/lit8 v2, v8, -0x6

    const/4 v5, 0x2

    if-gt v2, v5, :cond_5

    const/4 v2, 0x1

    .line 177
    :goto_7
    if-eqz v2, :cond_0

    move v12, v8

    move v13, v2

    goto :goto_1

    .line 176
    :cond_5
    const/4 v2, 0x0

    goto :goto_7

    .line 181
    :cond_6
    const/4 v2, 0x0

    move v11, v2

    goto :goto_2

    .line 182
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 199
    :cond_8
    const/4 v5, 0x1

    if-ne v15, v5, :cond_a

    .line 200
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v3, v4}, Lcom/instagram/feed/d/aa;->a(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;Landroid/text/SpannableStringBuilder;I)I

    move-object v5, v6

    goto :goto_5

    .line 202
    :cond_9
    if-nez v13, :cond_2

    invoke-virtual {v5}, Lcom/instagram/feed/d/b;->i()I

    move-result v7

    sget v16, Lcom/instagram/feed/d/d;->b:I

    move/from16 v0, v16

    if-eq v7, v0, :cond_2

    .line 205
    const/4 v2, 0x1

    :cond_a
    move-object v5, v6

    .line 208
    goto :goto_5

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/instagram/feed/d/l;->Z()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 209
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v3, v4}, Lcom/instagram/feed/d/aa;->a(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;Landroid/text/SpannableStringBuilder;I)I

    .line 232
    :cond_c
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 233
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 235
    :cond_d
    return-object v3

    .line 211
    :cond_e
    const/4 v5, 0x1

    if-ne v10, v5, :cond_f

    if-eqz v11, :cond_f

    if-nez v9, :cond_f

    .line 212
    const/4 v2, 0x1

    move-object v5, v6

    goto :goto_5

    .line 214
    :cond_f
    if-eqz v13, :cond_10

    .line 215
    invoke-static {v14, v10}, Lcom/instagram/feed/d/aa;->a(Ljava/util/List;I)Lcom/instagram/feed/d/b;

    move-result-object v5

    goto :goto_5

    .line 217
    :cond_10
    sub-int v5, v8, v12

    .line 218
    add-int/2addr v5, v10

    add-int/lit8 v5, v5, -0x1

    .line 219
    invoke-static {v14, v5}, Lcom/instagram/feed/d/aa;->a(Ljava/util/List;I)Lcom/instagram/feed/d/b;

    move-result-object v5

    goto :goto_5

    .line 226
    :cond_11
    if-eqz v2, :cond_12

    .line 227
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v3, v4}, Lcom/instagram/feed/d/aa;->a(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;Landroid/text/SpannableStringBuilder;I)I

    move-result v4

    .line 228
    const/4 v2, 0x1

    goto :goto_6

    :cond_12
    move v2, v9

    goto :goto_6
.end method

.method static a(Lcom/instagram/feed/d/l;)Ljava/lang/CharSequence;
    .locals 5
    .parameter

    .prologue
    .line 44
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 45
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 46
    new-instance v1, Lcom/instagram/feed/d/a;

    const-string v2, "media_owner"

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/instagram/feed/d/a;-><init>(Ljava/lang/String;Lcom/instagram/user/c/a;Lcom/instagram/feed/d/l;)V

    .line 47
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 49
    return-object v0
.end method

.method static b(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;)Ljava/lang/CharSequence;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x21

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->k()Ljava/util/Set;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_1

    .line 83
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 88
    new-instance v3, Landroid/text/style/ImageSpan;

    sget v4, Lcom/facebook/au;->feed_like_small:I

    const/high16 v5, 0x4040

    invoke-static {p0, v4, v5}, Lcom/instagram/feed/d/aa;->a(Landroid/content/res/Resources;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 97
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    .line 98
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 100
    new-instance v5, Lcom/instagram/feed/d/a;

    const-string v6, "like_owner"

    invoke-direct {v5, v6, v0, p1}, Lcom/instagram/feed/d/a;-><init>(Ljava/lang/String;Lcom/instagram/user/c/a;Lcom/instagram/feed/d/l;)V

    .line 101
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v2, v5, v1, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 103
    const-string v0, ", "

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 104
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    move v1, v0

    .line 105
    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-object v0, v2

    .line 114
    :goto_1
    return-object v0

    .line 109
    :cond_1
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->j()I

    move-result v0

    if-lez v0, :cond_2

    .line 110
    invoke-static {p0, p1}, Lcom/instagram/feed/d/aa;->c(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_1

    .line 112
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method private static c(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;)Landroid/text/SpannableStringBuilder;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x21

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 121
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 123
    new-instance v1, Landroid/text/style/ImageSpan;

    sget v2, Lcom/facebook/au;->feed_like_small:I

    const/high16 v3, 0x4080

    invoke-static {p0, v2, v3}, Lcom/instagram/feed/d/aa;->a(Landroid/content/res/Resources;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v1, v7, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 130
    sget v1, Lcom/facebook/az;->number_of_people_who_like_this_photo:I

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Lcom/instagram/feed/d/aa;->a:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->j()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 134
    new-instance v1, Lcom/instagram/feed/d/ab;

    invoke-direct {v1, p1}, Lcom/instagram/feed/d/ab;-><init>(Lcom/instagram/feed/d/l;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v6, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 142
    return-object v0
.end method
