.class public final Lcom/instagram/feed/c/e;
.super Ljava/lang/Object;
.source "InsightsEventBuilder.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/instagram/feed/g/a;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/Long;

.field private j:J

.field private k:I

.field private l:I

.field private m:I

.field private n:D

.field private o:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/instagram/feed/c/e;->j:J

    .line 48
    iput v2, p0, Lcom/instagram/feed/c/e;->k:I

    .line 49
    iput v2, p0, Lcom/instagram/feed/c/e;->l:I

    .line 50
    iput v2, p0, Lcom/instagram/feed/c/e;->m:I

    .line 51
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/instagram/feed/c/e;->n:D

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/feed/c/e;->o:Ljava/lang/Boolean;

    .line 58
    iput-object p1, p0, Lcom/instagram/feed/c/e;->a:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/instagram/feed/c/e;->b:Lcom/instagram/feed/g/a;

    .line 60
    return-void
.end method

.method static a(Lcom/instagram/user/c/c;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 162
    sget-object v0, Lcom/instagram/feed/c/f;->a:[I

    invoke-virtual {p0}, Lcom/instagram/user/c/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 174
    const-string v0, "InsightsEventBuilder"

    const-string v1, "Follow status: %s not handled. Using \'unknown\' instead."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 164
    :pswitch_0
    const-string v0, "unknown"

    goto :goto_0

    .line 166
    :pswitch_1
    const-string v0, "fetching"

    goto :goto_0

    .line 168
    :pswitch_2
    const-string v0, "not_following"

    goto :goto_0

    .line 170
    :pswitch_3
    const-string v0, "following"

    goto :goto_0

    .line 172
    :pswitch_4
    const-string v0, "requested"

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final a()Lcom/instagram/common/analytics/b;
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 113
    new-instance v1, Lcom/instagram/common/analytics/b;

    iget-object v0, p0, Lcom/instagram/feed/c/e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/instagram/feed/c/e;->b:Lcom/instagram/feed/g/a;

    invoke-direct {v1, v0, v2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    .line 115
    iget-object v0, p0, Lcom/instagram/feed/c/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "m_pk"

    iget-object v2, p0, Lcom/instagram/feed/c/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/c/e;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 119
    const-string v0, "a_pk"

    iget-object v2, p0, Lcom/instagram/feed/c/e;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/instagram/feed/c/e;->i:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 122
    const-string v0, "m_ts"

    iget-object v2, p0, Lcom/instagram/feed/c/e;->i:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    .line 124
    :cond_2
    iget v0, p0, Lcom/instagram/feed/c/e;->k:I

    if-eq v0, v6, :cond_3

    .line 125
    const-string v0, "m_t"

    iget v2, p0, Lcom/instagram/feed/c/e;->k:I

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/instagram/feed/c/e;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 128
    const-string v0, "tracking_token"

    iget-object v2, p0, Lcom/instagram/feed/c/e;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/instagram/feed/c/e;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 131
    const-string v0, "source_of_action"

    iget-object v2, p0, Lcom/instagram/feed/c/e;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 133
    :cond_5
    iget-object v0, p0, Lcom/instagram/feed/c/e;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 134
    const-string v0, "follow_status"

    iget-object v2, p0, Lcom/instagram/feed/c/e;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 136
    :cond_6
    iget v0, p0, Lcom/instagram/feed/c/e;->l:I

    if-eq v0, v6, :cond_7

    .line 137
    const-string v0, "m_ix"

    iget v2, p0, Lcom/instagram/feed/c/e;->l:I

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    .line 139
    :cond_7
    iget-wide v2, p0, Lcom/instagram/feed/c/e;->j:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_8

    .line 140
    const-string v0, "timespent"

    iget-wide v2, p0, Lcom/instagram/feed/c/e;->j:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    .line 142
    :cond_8
    iget-object v0, p0, Lcom/instagram/feed/c/e;->h:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 143
    const-string v0, "response"

    iget-object v2, p0, Lcom/instagram/feed/c/e;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 145
    :cond_9
    iget v0, p0, Lcom/instagram/feed/c/e;->m:I

    if-eq v0, v6, :cond_a

    .line 146
    const-string v0, "time"

    iget v2, p0, Lcom/instagram/feed/c/e;->m:I

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    .line 148
    :cond_a
    iget-wide v2, p0, Lcom/instagram/feed/c/e;->n:D

    const-wide/high16 v4, -0x4010

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_b

    .line 149
    const-string v0, "timeAsPercent"

    iget-wide v2, p0, Lcom/instagram/feed/c/e;->n:D

    invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;D)Lcom/instagram/common/analytics/b;

    .line 151
    :cond_b
    iget v0, p0, Lcom/instagram/feed/c/e;->k:I

    sget-object v2, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;

    invoke-virtual {v2}, Lcom/instagram/model/a/a;->a()I

    move-result v2

    if-ne v0, v2, :cond_c

    iget-object v0, p0, Lcom/instagram/feed/c/e;->o:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 152
    const-string v2, "audio_enabled"

    iget-object v0, p0, Lcom/instagram/feed/c/e;->o:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 154
    :cond_c
    invoke-static {}, Lcom/instagram/common/s/b;->d()Z

    move-result v0

    if-nez v0, :cond_d

    .line 155
    const-string v0, "production_build"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 158
    :cond_d
    return-object v1

    .line 152
    :cond_e
    const-string v0, "0"

    goto :goto_0
.end method

.method public final a(I)Lcom/instagram/feed/c/e;
    .locals 0
    .parameter

    .prologue
    .line 78
    iput p1, p0, Lcom/instagram/feed/c/e;->l:I

    .line 79
    return-object p0
.end method

.method public final a(J)Lcom/instagram/feed/c/e;
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/instagram/feed/c/e;->j:J

    .line 84
    return-object p0
.end method

.method public final a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/c/e;
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/c/e;->c:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/c/e;->d:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->m()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/c/e;->i:Ljava/lang/Long;

    .line 66
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->w()Lcom/instagram/model/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/model/a/a;->a()I

    move-result v0

    iput v0, p0, Lcom/instagram/feed/c/e;->k:I

    .line 67
    iget-object v0, p0, Lcom/instagram/feed/c/e;->b:Lcom/instagram/feed/g/a;

    invoke-interface {v0}, Lcom/instagram/feed/g/a;->j_()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/c/e;->f:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/feed/c/e;->a(Lcom/instagram/user/c/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/c/e;->g:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/instagram/feed/c/e;->b:Lcom/instagram/feed/g/a;

    invoke-static {p1, v0}, Lcom/instagram/feed/c/g;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->ai()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/instagram/feed/c/e;->e:Ljava/lang/String;

    .line 74
    return-object p0

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->aj()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/instagram/feed/c/e;
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/instagram/feed/c/e;->e:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/instagram/feed/c/e;
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/instagram/feed/c/e;->h:Ljava/lang/String;

    .line 94
    return-object p0
.end method
