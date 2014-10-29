.class public final Lcom/instagram/common/analytics/ap;
.super Ljava/lang/Object;
.source "TimeSpentBitArray.java"


# static fields
.field private static final a:Ljava/util/Random;


# instance fields
.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:[I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/instagram/common/analytics/ap;->a:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/instagram/common/analytics/ap;->h:I

    .line 62
    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/instagram/common/analytics/ap;->h:I

    .line 64
    invoke-static {}, Lcom/instagram/common/analytics/ap;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/analytics/ap;->d:Ljava/lang/String;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/common/analytics/ap;->f:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/common/analytics/ap;->g:I

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/common/analytics/ap;->e:[I

    .line 71
    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/instagram/common/analytics/ap;->a:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(J)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 89
    iput-wide p1, p0, Lcom/instagram/common/analytics/ap;->c:J

    iput-wide p1, p0, Lcom/instagram/common/analytics/ap;->b:J

    .line 90
    iget v1, p0, Lcom/instagram/common/analytics/ap;->h:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/instagram/common/analytics/ap;->e:[I

    .line 92
    iget-object v1, p0, Lcom/instagram/common/analytics/ap;->e:[I

    aput v0, v1, v2

    .line 93
    :goto_0
    iget v1, p0, Lcom/instagram/common/analytics/ap;->h:I

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/instagram/common/analytics/ap;->e:[I

    aput v2, v1, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    iget v0, p0, Lcom/instagram/common/analytics/ap;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/common/analytics/ap;->f:I

    .line 98
    iget v0, p0, Lcom/instagram/common/analytics/ap;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/common/analytics/ap;->g:I

    .line 99
    return-void
.end method

.method private b(J)Lcom/instagram/common/analytics/b;
    .locals 7
    .parameter

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/instagram/common/analytics/ap;->b:J

    sub-long v1, p1, v0

    .line 106
    const/4 v0, 0x0

    .line 108
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    const-wide/16 v3, 0x40

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    .line 110
    :cond_0
    sget v0, Lcom/instagram/common/analytics/ar;->b:I

    invoke-direct {p0, p1, p2, v0}, Lcom/instagram/common/analytics/ap;->c(JI)Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 113
    :cond_1
    iget-object v3, p0, Lcom/instagram/common/analytics/ap;->e:[I

    if-nez v3, :cond_2

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/instagram/common/analytics/ap;->a(J)V

    .line 128
    :goto_0
    return-object v0

    .line 123
    :cond_2
    iget-object v3, p0, Lcom/instagram/common/analytics/ap;->e:[I

    long-to-int v4, v1

    shr-int/lit8 v4, v4, 0x5

    aget v5, v3, v4

    const/4 v6, 0x1

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0x1f

    shl-int v1, v6, v1

    or-int/2addr v1, v5

    aput v1, v3, v4

    .line 124
    iput-wide p1, p0, Lcom/instagram/common/analytics/ap;->c:J

    .line 125
    iget v1, p0, Lcom/instagram/common/analytics/ap;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/instagram/common/analytics/ap;->g:I

    goto :goto_0
.end method

.method private b(JI)Lcom/instagram/common/analytics/b;
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x1

    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/instagram/common/analytics/ap;->e:[I

    if-nez v0, :cond_1

    move-object v0, v1

    .line 161
    :cond_0
    :goto_0
    return-object v0

    .line 143
    :cond_1
    iget-wide v2, p0, Lcom/instagram/common/analytics/ap;->c:J

    cmp-long v0, p1, v2

    if-lez v0, :cond_2

    .line 144
    const-wide/16 v2, 0x40

    iget-wide v4, p0, Lcom/instagram/common/analytics/ap;->b:J

    sub-long v4, p1, v4

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 149
    :goto_1
    new-instance v2, Lcom/instagram/common/analytics/b;

    const-string v3, "time_spent_bit_array"

    invoke-direct {v2, v3, v1}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v1, "tos_id"

    iget-object v3, p0, Lcom/instagram/common/analytics/ap;->d:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "start_time"

    iget-wide v3, p0, Lcom/instagram/common/analytics/ap;->b:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "tos_array"

    iget-object v3, p0, Lcom/instagram/common/analytics/ap;->e:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "tos_len"

    invoke-virtual {v1, v2, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "tos_seq"

    iget v2, p0, Lcom/instagram/common/analytics/ap;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "tos_cum"

    iget v2, p0, Lcom/instagram/common/analytics/ap;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 158
    sget v1, Lcom/instagram/common/analytics/ar;->d:I

    if-ne p3, v1, :cond_0

    .line 159
    const-string v1, "trigger"

    const-string v2, "clock_change"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    goto :goto_0

    .line 146
    :cond_2
    iget-wide v2, p0, Lcom/instagram/common/analytics/ap;->c:J

    iget-wide v4, p0, Lcom/instagram/common/analytics/ap;->b:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v6

    long-to-int v0, v2

    goto :goto_1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/common/analytics/ap;->e:[I

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/instagram/common/analytics/ap;->c:J

    .line 83
    return-void
.end method

.method private c(JI)Lcom/instagram/common/analytics/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/common/analytics/ap;->b(JI)Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 170
    invoke-direct {p0}, Lcom/instagram/common/analytics/ap;->b()V

    .line 171
    return-object v0
.end method


# virtual methods
.method public final a(JI)Lcom/instagram/common/analytics/b;
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x3e8

    .line 178
    const/4 v0, 0x0

    .line 180
    sget-object v1, Lcom/instagram/common/analytics/aq;->a:[I

    add-int/lit8 v2, p3, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 199
    :cond_0
    :goto_0
    return-object v0

    .line 184
    :pswitch_0
    div-long v1, p1, v3

    .line 185
    iget-wide v3, p0, Lcom/instagram/common/analytics/ap;->c:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 186
    invoke-direct {p0, v1, v2}, Lcom/instagram/common/analytics/ap;->b(J)Lcom/instagram/common/analytics/b;

    move-result-object v0

    goto :goto_0

    .line 193
    :pswitch_1
    iget-object v1, p0, Lcom/instagram/common/analytics/ap;->e:[I

    if-eqz v1, :cond_0

    .line 194
    div-long v0, p1, v3

    .line 195
    invoke-direct {p0, v0, v1, p3}, Lcom/instagram/common/analytics/ap;->c(JI)Lcom/instagram/common/analytics/b;

    move-result-object v0

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
