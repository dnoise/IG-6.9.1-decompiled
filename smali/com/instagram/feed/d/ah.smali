.class public final Lcom/instagram/feed/d/ah;
.super Ljava/lang/Object;
.source "Media__JsonHelper.java"


# direct methods
.method protected static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/l;
    .locals 3
    .parameter

    .prologue
    .line 26
    new-instance v0, Lcom/instagram/feed/d/l;

    invoke-direct {v0}, Lcom/instagram/feed/d/l;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    .line 31
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    .line 34
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 37
    invoke-static {v0, v1, p0}, Lcom/instagram/feed/d/ah;->a(Lcom/instagram/feed/d/l;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    .line 38
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->a()Lcom/instagram/feed/d/l;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/instagram/feed/d/l;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 46
    const-string v2, "location"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-static {p2, v1}, Lcom/instagram/venue/model/Venue;->a(Lcom/fasterxml/jackson/a/l;Z)Lcom/instagram/venue/model/Venue;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/d/l;->o:Lcom/instagram/venue/model/Venue;

    move v0, v1

    .line 181
    :goto_0
    return v0

    .line 49
    :cond_0
    const-string v2, "user"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    invoke-static {p2}, Lcom/instagram/user/c/l;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/d/l;->b:Lcom/instagram/user/c/a;

    move v0, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string v2, "organic_tracking_token"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 53
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_2

    :goto_1
    iput-object v0, p0, Lcom/instagram/feed/d/l;->v:Ljava/lang/String;

    move v0, v1

    .line 54
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 55
    :cond_3
    const-string v2, "taken_at"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 56
    invoke-static {p2}, Lcom/instagram/feed/d/l;->b(Lcom/fasterxml/jackson/a/l;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/instagram/feed/d/l;->d:J

    move v0, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_4
    const-string v2, "algorithm"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 59
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_5

    :goto_2
    iput-object v0, p0, Lcom/instagram/feed/d/l;->z:Ljava/lang/String;

    move v0, v1

    .line 60
    goto :goto_0

    .line 59
    :cond_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 61
    :cond_6
    const-string v2, "id"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 62
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_7

    :goto_3
    iput-object v0, p0, Lcom/instagram/feed/d/l;->a:Ljava/lang/String;

    move v0, v1

    .line 63
    goto :goto_0

    .line 62
    :cond_7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 64
    :cond_8
    const-string v2, "comments"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 66
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_a

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    :cond_9
    :goto_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_a

    .line 69
    invoke-static {p2}, Lcom/instagram/feed/d/j;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/b;

    move-result-object v2

    .line 70
    if-eqz v2, :cond_9

    .line 71
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 75
    :cond_a
    iput-object v0, p0, Lcom/instagram/feed/d/l;->l:Ljava/util/List;

    move v0, v1

    .line 76
    goto/16 :goto_0

    .line 77
    :cond_b
    const-string v2, "collapse_comments"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 78
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/feed/d/l;->u:Z

    move v0, v1

    .line 79
    goto/16 :goto_0

    .line 80
    :cond_c
    const-string v2, "comment_count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 81
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/d/l;->j:Ljava/lang/Integer;

    move v0, v1

    .line 82
    goto/16 :goto_0

    .line 83
    :cond_d
    const-string v2, "last_seen_at"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 84
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/instagram/feed/d/l;->x:J

    move v0, v1

    .line 85
    goto/16 :goto_0

    .line 86
    :cond_e
    const-string v2, "image_versions"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 88
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_10

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    :cond_f
    :goto_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_10

    .line 91
    invoke-static {p2}, Lcom/instagram/feed/d/ag;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/s;

    move-result-object v2

    .line 92
    if-eqz v2, :cond_f

    .line 93
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 97
    :cond_10
    iput-object v0, p0, Lcom/instagram/feed/d/l;->e:Ljava/util/List;

    move v0, v1

    .line 98
    goto/16 :goto_0

    .line 99
    :cond_11
    const-string v2, "photo_of_you"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 100
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/feed/d/l;->s:Z

    move v0, v1

    .line 101
    goto/16 :goto_0

    .line 102
    :cond_12
    const-string v2, "lat"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 103
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/d/l;->p:Ljava/lang/Double;

    move v0, v1

    .line 104
    goto/16 :goto_0

    .line 105
    :cond_13
    const-string v2, "recipients"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 107
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_15

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    :cond_14
    :goto_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_15

    .line 110
    invoke-static {p2}, Lcom/instagram/model/b/d;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/model/b/a;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_14

    .line 112
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 116
    :cond_15
    iput-object v0, p0, Lcom/instagram/feed/d/l;->w:Ljava/util/List;

    move v0, v1

    .line 117
    goto/16 :goto_0

    .line 118
    :cond_16
    const-string v2, "caption"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 119
    invoke-static {p2}, Lcom/instagram/feed/d/j;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/d/l;->k:Lcom/instagram/feed/d/b;

    move v0, v1

    .line 120
    goto/16 :goto_0

    .line 121
    :cond_17
    const-string v2, "explore_context"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 122
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_18

    :goto_7
    iput-object v0, p0, Lcom/instagram/feed/d/l;->A:Ljava/lang/String;

    move v0, v1

    .line 123
    goto/16 :goto_0

    .line 122
    :cond_18
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 124
    :cond_19
    const-string v2, "impression_token"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 125
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_1a

    :goto_8
    iput-object v0, p0, Lcom/instagram/feed/d/l;->B:Ljava/lang/String;

    move v0, v1

    .line 126
    goto/16 :goto_0

    .line 125
    :cond_1a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 127
    :cond_1b
    const-string v2, "video_versions"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 129
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_1d

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    :cond_1c
    :goto_9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_1d

    .line 132
    invoke-static {p2}, Lcom/instagram/feed/d/ag;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/s;

    move-result-object v2

    .line 133
    if-eqz v2, :cond_1c

    .line 134
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 138
    :cond_1d
    iput-object v0, p0, Lcom/instagram/feed/d/l;->f:Ljava/util/List;

    move v0, v1

    .line 139
    goto/16 :goto_0

    .line 140
    :cond_1e
    const-string v2, "like_count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 141
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v0

    iput v0, p0, Lcom/instagram/feed/d/l;->g:I

    move v0, v1

    .line 142
    goto/16 :goto_0

    .line 143
    :cond_1f
    const-string v2, "lng"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 144
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/d/l;->q:Ljava/lang/Double;

    move v0, v1

    .line 145
    goto/16 :goto_0

    .line 146
    :cond_20
    const-string v2, "last_comment_at"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 147
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/instagram/feed/d/l;->y:J

    move v0, v1

    .line 148
    goto/16 :goto_0

    .line 149
    :cond_21
    const-string v2, "has_liked"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 150
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v0

    invoke-static {v0}, Lcom/instagram/feed/d/o;->a(Z)I

    move-result v0

    iput v0, p0, Lcom/instagram/feed/d/l;->i:I

    move v0, v1

    .line 151
    goto/16 :goto_0

    .line 152
    :cond_22
    const-string v2, "media_type"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 153
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/model/a/a;->a(I)Lcom/instagram/model/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/d/l;->c:Lcom/instagram/model/a/a;

    move v0, v1

    .line 154
    goto/16 :goto_0

    .line 155
    :cond_23
    const-string v2, "has_more_comments"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 156
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/feed/d/l;->m:Z

    move v0, v1

    .line 157
    goto/16 :goto_0

    .line 158
    :cond_24
    const-string v2, "usertags"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 159
    invoke-static {p2}, Lcom/instagram/feed/d/ae;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/p;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/d/l;->r:Lcom/instagram/feed/d/p;

    move v0, v1

    .line 160
    goto/16 :goto_0

    .line 161
    :cond_25
    const-string v2, "injected"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 162
    invoke-static {p2}, Lcom/instagram/feed/d/af;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/r;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/r;

    move v0, v1

    .line 163
    goto/16 :goto_0

    .line 164
    :cond_26
    const-string v2, "next_max_id"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 165
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/instagram/feed/d/l;->n:J

    move v0, v1

    .line 166
    goto/16 :goto_0

    .line 167
    :cond_27
    const-string v2, "likers"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 169
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_29

    .line 170
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 171
    :cond_28
    :goto_a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_29

    .line 172
    invoke-static {p2}, Lcom/instagram/user/c/l;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;

    move-result-object v2

    .line 173
    if-eqz v2, :cond_28

    .line 174
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 178
    :cond_29
    iput-object v0, p0, Lcom/instagram/feed/d/l;->h:Ljava/util/Set;

    move v0, v1

    .line 179
    goto/16 :goto_0

    .line 181
    :cond_2a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
