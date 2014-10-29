.class public final Lcom/facebook/d/f/a;
.super Ljava/lang/Object;
.source "StringFormatUtil.java"


# direct methods
.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    const/4 v5, 0x0

    .line 116
    const/4 v3, 0x0

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 119
    if-nez p0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 120
    :goto_0
    const/4 v2, 0x0

    .line 121
    const/4 v4, 0x0

    .line 122
    const/4 v0, 0x0

    .line 123
    :goto_1
    if-ge v5, v6, :cond_1c

    .line 124
    if-nez v0, :cond_3

    .line 125
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 126
    const/16 v8, 0x25

    if-ne v7, v8, :cond_1

    .line 127
    const/4 v0, 0x1

    .line 128
    const/4 v4, 0x1

    move v9, v4

    move v4, v3

    move v3, v2

    move v2, v9

    .line 250
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v9, v2

    move v2, v3

    move v3, v4

    move v4, v9

    goto :goto_1

    .line 119
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 130
    :cond_1
    if-eqz v1, :cond_2

    .line 131
    add-int/lit8 v2, v2, 0x1

    move v9, v4

    move v4, v3

    move v3, v2

    move v2, v9

    goto :goto_2

    .line 133
    :cond_2
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v9, v4

    move v4, v3

    move v3, v2

    move v2, v9

    .line 136
    goto :goto_2

    .line 137
    :cond_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 138
    const/16 v0, 0x25

    if-ne v7, v0, :cond_5

    .line 140
    if-eqz v1, :cond_4

    .line 141
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    .line 248
    :goto_3
    const/4 v3, 0x0

    move v9, v3

    move v3, v2

    move v2, v4

    move v4, v0

    move v0, v9

    goto :goto_2

    .line 143
    :cond_4
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    goto :goto_3

    .line 146
    :cond_5
    if-eqz p2, :cond_6

    array-length v0, p2

    if-lt v3, v0, :cond_9

    .line 148
    :cond_6
    if-eqz v1, :cond_8

    .line 149
    const/4 v2, -0x1

    .line 264
    :cond_7
    :goto_4
    return v2

    .line 151
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 154
    :cond_9
    aget-object v0, p2, v3

    .line 155
    sparse-switch v7, :sswitch_data_0

    .line 240
    if-eqz v1, :cond_1b

    .line 241
    const/4 v2, -0x1

    goto :goto_4

    .line 157
    :sswitch_0
    instance-of v7, v0, Ljava/util/Formattable;

    if-eqz v7, :cond_b

    .line 159
    if-eqz v1, :cond_a

    .line 160
    const/4 v2, -0x1

    goto :goto_4

    .line 162
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 164
    :cond_b
    instance-of v7, v0, Ljava/lang/String;

    if-eqz v7, :cond_d

    .line 165
    if-eqz v1, :cond_c

    .line 166
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    .line 246
    :goto_5
    add-int/lit8 v2, v3, 0x1

    move v9, v0

    move v0, v2

    move v2, v9

    goto :goto_3

    .line 168
    :cond_c
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_5

    .line 171
    :cond_d
    if-eqz v1, :cond_f

    .line 174
    if-nez v0, :cond_e

    .line 175
    const-string v0, "null"

    .line 179
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v2, v7

    .line 180
    aput-object v0, p2, v3

    move v0, v2

    .line 181
    goto :goto_5

    .line 177
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 182
    :cond_f
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 185
    goto :goto_5

    .line 187
    :sswitch_1
    if-nez v0, :cond_11

    .line 188
    if-eqz v1, :cond_10

    .line 189
    add-int/lit8 v0, v2, 0x4

    goto :goto_5

    .line 191
    :cond_10
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_5

    .line 193
    :cond_11
    instance-of v7, v0, Ljava/lang/Integer;

    if-eqz v7, :cond_13

    .line 194
    if-eqz v1, :cond_12

    .line 196
    add-int/lit8 v0, v2, 0xb

    goto :goto_5

    .line 200
    :cond_12
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_5

    .line 202
    :cond_13
    instance-of v7, v0, Ljava/lang/Short;

    if-eqz v7, :cond_15

    .line 203
    if-eqz v1, :cond_14

    .line 205
    add-int/lit8 v0, v2, 0x6

    goto :goto_5

    .line 209
    :cond_14
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_5

    .line 211
    :cond_15
    instance-of v7, v0, Ljava/lang/Byte;

    if-eqz v7, :cond_17

    .line 212
    if-eqz v1, :cond_16

    .line 214
    add-int/lit8 v0, v2, 0x4

    goto :goto_5

    .line 218
    :cond_16
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_5

    .line 220
    :cond_17
    instance-of v7, v0, Ljava/lang/Long;

    if-eqz v7, :cond_19

    .line 221
    if-eqz v1, :cond_18

    .line 223
    add-int/lit8 v0, v2, 0x14

    goto :goto_5

    .line 227
    :cond_18
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v2

    goto/16 :goto_5

    .line 231
    :cond_19
    if-eqz v1, :cond_1a

    .line 232
    const/4 v2, -0x1

    goto/16 :goto_4

    .line 234
    :cond_1a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 243
    :cond_1b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 253
    :cond_1c
    if-eqz v0, :cond_1e

    .line 255
    if-eqz v1, :cond_1d

    .line 256
    const/4 v2, -0x1

    goto/16 :goto_4

    .line 258
    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 261
    :cond_1e
    if-nez v4, :cond_7

    .line 264
    const/4 v2, -0x2

    goto/16 :goto_4

    .line 155
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/facebook/d/f/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 46
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 47
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 53
    :cond_0
    :goto_0
    return-object p0

    .line 48
    :cond_1
    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 52
    invoke-static {v1, p0, p1}, Lcom/facebook/d/f/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/facebook/d/f/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
