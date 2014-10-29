.class Lcom/facebook/e/c/j;
.super Ljava/lang/Object;
.source "TraceFormatter.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/facebook/e/c/j;

    sput-object v0, Lcom/facebook/e/c/j;->a:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILjava/util/List;Landroid/support/v4/c/d;)Ljava/lang/String;
    .locals 18
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/e/c/g;",
            ">;",
            "Landroid/support/v4/c/d",
            "<",
            "Lcom/facebook/e/c/g;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    const-wide/16 v7, -0x1

    .line 78
    invoke-static {}, Lcom/facebook/e/c/n;->a()J

    move-result-wide v11

    .line 79
    const/4 v6, 0x0

    .line 80
    const/4 v5, 0x0

    .line 81
    const-wide/16 v3, -0x1

    .line 82
    const/4 v1, 0x0

    move v9, v6

    move/from16 v16, v5

    move-wide v5, v7

    move v8, v1

    move/from16 v7, v16

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_3

    .line 83
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/e/c/g;

    .line 84
    if-eqz v1, :cond_8

    .line 85
    if-nez v7, :cond_9

    .line 88
    invoke-virtual {v1}, Lcom/facebook/e/c/g;->b()I

    move-result v10

    move/from16 v0, p0

    if-ne v10, v0, :cond_8

    .line 89
    const/4 v7, 0x1

    .line 90
    invoke-virtual {v1}, Lcom/facebook/e/c/g;->f()J

    move-result-wide v3

    move v10, v7

    .line 97
    :goto_1
    invoke-virtual {v1}, Lcom/facebook/e/c/g;->c()Lcom/facebook/e/c/i;

    move-result-object v13

    .line 98
    sget-object v7, Lcom/facebook/e/c/i;->f:Lcom/facebook/e/c/i;

    if-eq v13, v7, :cond_7

    .line 99
    sget-object v7, Lcom/facebook/e/c/i;->b:Lcom/facebook/e/c/i;

    if-eq v13, v7, :cond_0

    sget-object v7, Lcom/facebook/e/c/i;->d:Lcom/facebook/e/c/i;

    if-ne v13, v7, :cond_6

    .line 103
    :cond_0
    if-nez v9, :cond_2

    .line 104
    sget-object v7, Lcom/facebook/e/c/j;->a:Ljava/lang/Class;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Trace contains a stop event without a corresponding start: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)V

    move v7, v9

    .line 109
    :goto_2
    const-string v9, " "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual/range {v1 .. v7}, Lcom/facebook/e/c/g;->a(Ljava/lang/StringBuilder;JJI)V

    .line 111
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v1}, Lcom/facebook/e/c/g;->f()J

    move-result-wide v5

    .line 113
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    sget-object v1, Lcom/facebook/e/c/i;->a:Lcom/facebook/e/c/i;

    if-eq v13, v1, :cond_1

    sget-object v1, Lcom/facebook/e/c/i;->c:Lcom/facebook/e/c/i;

    if-ne v13, v1, :cond_5

    .line 115
    :cond_1
    add-int/lit8 v9, v7, 0x1

    move/from16 v16, v10

    move/from16 v17, v9

    move-wide v9, v5

    move/from16 v5, v16

    move/from16 v6, v17

    .line 82
    :goto_3
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v7, v5

    move/from16 v16, v6

    move-wide v5, v9

    move/from16 v9, v16

    goto :goto_0

    .line 106
    :cond_2
    add-int/lit8 v9, v9, -0x1

    move v7, v9

    goto :goto_2

    .line 119
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/c/d;->a()I

    move-result v1

    if-eqz v1, :cond_4

    .line 120
    const-string v1, " Unstopped timers:\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/c/d;->a()I

    move-result v4

    .line 122
    const/4 v1, 0x0

    move v3, v1

    :goto_4
    if-ge v3, v4, :cond_4

    .line 123
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/e/c/g;

    .line 124
    invoke-virtual {v1}, Lcom/facebook/e/c/g;->f()J

    move-result-wide v5

    .line 125
    const-string v7, "  "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    sub-long v7, v11, v5

    const-wide/32 v9, 0xf4240

    div-long/2addr v7, v9

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, " ms, started at "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-wide/32 v7, 0xf4240

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Lcom/facebook/e/c/g;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    .line 135
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_5
    move/from16 v16, v10

    move-wide v9, v5

    move v6, v7

    move/from16 v5, v16

    goto :goto_3

    :cond_6
    move v7, v9

    goto/16 :goto_2

    :cond_7
    move/from16 v16, v10

    move/from16 v17, v9

    move-wide v9, v5

    move/from16 v5, v16

    move/from16 v6, v17

    goto :goto_3

    :cond_8
    move/from16 v16, v9

    move-wide v9, v5

    move v5, v7

    move/from16 v6, v16

    goto :goto_3

    :cond_9
    move v10, v7

    goto/16 :goto_1
.end method

.method static a(IILjava/lang/String;Ljava/util/List;Landroid/support/v4/c/d;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/e/c/g;",
            ">;",
            "Landroid/support/v4/c/d",
            "<",
            "Lcom/facebook/e/c/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v10, 0xfa0

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 30
    invoke-static {p1}, Lcom/facebook/e/a/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-static {p0, p3, p4}, Lcom/facebook/e/c/j;->a(ILjava/util/List;Landroid/support/v4/c/d;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v10, :cond_6

    .line 36
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 39
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    invoke-static {v7, v2, v5, v5}, Lcom/facebook/e/c/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    move v1, v2

    move v3, v2

    .line 42
    :goto_1
    array-length v4, v6

    if-ge v3, v4, :cond_5

    .line 43
    if-eqz v3, :cond_3

    add-int/lit8 v4, v3, -0x1

    aget-object v4, v6, v4

    .line 44
    :goto_2
    aget-object v8, v6, v3

    .line 45
    if-eqz v0, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v0

    if-ge v9, v10, :cond_4

    .line 46
    :cond_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v4, "\n"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    .line 49
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move-object v4, v5

    .line 43
    goto :goto_2

    .line 51
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/facebook/e/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    invoke-static {v7, v1, v4, v8}, Lcom/facebook/e/c/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    goto :goto_1

    .line 58
    :cond_5
    if-lez v0, :cond_0

    .line 59
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/facebook/e/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    invoke-static {v1}, Lcom/facebook/e/c/j;->a(Ljava/lang/StringBuilder;)V

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/facebook/e/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 144
    const/4 v0, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/facebook/e/c/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    const-string v0, "Thread trace:("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    .line 163
    const-string v0, "    "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_0
    :goto_0
    const-string v0, "                 "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {p0, p2, p3}, Lcom/facebook/e/c/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v0, " .                   TOTAL   THREAD  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-static {p0, p2, p3}, Lcom/facebook/e/c/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    return-void

    .line 164
    :cond_1
    const/16 v0, 0x64

    if-ge p1, v0, :cond_2

    .line 165
    const-string v0, "   "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 166
    :cond_2
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    .line 167
    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x7c

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 204
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 242
    :cond_0
    return-void

    .line 213
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v7, v1

    move v2, v1

    move v5, v1

    .line 214
    :goto_0
    if-ge v7, v8, :cond_0

    .line 217
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_a

    .line 218
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 220
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v7, v6, :cond_9

    .line 221
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 223
    :goto_2
    if-nez v5, :cond_6

    if-ne v0, v10, :cond_6

    move v5, v3

    .line 228
    :cond_2
    :goto_3
    if-nez v2, :cond_7

    if-ne v6, v10, :cond_7

    move v2, v3

    .line 234
    :cond_3
    :goto_4
    if-ne v5, v4, :cond_4

    if-eq v2, v4, :cond_0

    .line 236
    :cond_4
    if-ne v5, v3, :cond_8

    .line 237
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    :cond_5
    :goto_5
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 225
    :cond_6
    if-ne v5, v3, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_2

    if-eq v0, v10, :cond_2

    move v5, v4

    .line 226
    goto :goto_3

    .line 230
    :cond_7
    if-ne v2, v3, :cond_3

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_3

    if-eq v6, v10, :cond_3

    move v2, v4

    .line 231
    goto :goto_4

    .line 238
    :cond_8
    if-ne v2, v3, :cond_5

    .line 239
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_9
    move v6, v1

    goto :goto_2

    :cond_a
    move v0, v1

    goto :goto_1
.end method
