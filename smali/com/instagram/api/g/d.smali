.class public final Lcom/instagram/api/g/d;
.super Ljava/lang/Object;
.source "EndpointStats.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/instagram/api/g/d;->a:Ljava/lang/String;

    .line 27
    iput v2, p0, Lcom/instagram/api/g/d;->b:I

    .line 28
    iput v2, p0, Lcom/instagram/api/g/d;->c:I

    .line 29
    iput-wide v0, p0, Lcom/instagram/api/g/d;->d:J

    .line 30
    iput-wide v0, p0, Lcom/instagram/api/g/d;->e:J

    .line 31
    iput-wide v0, p0, Lcom/instagram/api/g/d;->f:J

    .line 32
    iput-wide v0, p0, Lcom/instagram/api/g/d;->g:J

    .line 33
    iput-wide v0, p0, Lcom/instagram/api/g/d;->h:J

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/api/g/d;->i:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private a()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/instagram/api/g/d;->d:J

    invoke-direct {p0, v0, v1}, Lcom/instagram/api/g/d;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(J)J
    .locals 2
    .parameter

    .prologue
    .line 73
    iget v0, p0, Lcom/instagram/api/g/d;->b:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lcom/instagram/api/g/d;->b:I

    int-to-long v0, v0

    div-long v0, p1, v0

    goto :goto_0
.end method

.method private b()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/instagram/api/g/d;->e:J

    invoke-direct {p0, v0, v1}, Lcom/instagram/api/g/d;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private c()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/instagram/api/g/d;->f:J

    invoke-direct {p0, v0, v1}, Lcom/instagram/api/g/d;->a(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/a/h;)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 77
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 80
    iget-wide v0, p0, Lcom/instagram/api/g/d;->h:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    .line 81
    const-string v0, "bytes_down"

    iget-wide v1, p0, Lcom/instagram/api/g/d;->h:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;J)V

    .line 84
    :cond_0
    iget-wide v0, p0, Lcom/instagram/api/g/d;->g:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    .line 85
    const-string v0, "bytes_up"

    iget-wide v1, p0, Lcom/instagram/api/g/d;->g:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;J)V

    .line 88
    :cond_1
    invoke-direct {p0}, Lcom/instagram/api/g/d;->a()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    .line 89
    const-string v0, "upload_duration_ms"

    invoke-direct {p0}, Lcom/instagram/api/g/d;->a()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;J)V

    .line 92
    :cond_2
    invoke-direct {p0}, Lcom/instagram/api/g/d;->b()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-lez v0, :cond_3

    .line 93
    const-string v0, "server_latency_ms"

    invoke-direct {p0}, Lcom/instagram/api/g/d;->b()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;J)V

    .line 96
    :cond_3
    invoke-direct {p0}, Lcom/instagram/api/g/d;->c()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-lez v0, :cond_4

    .line 97
    const-string v0, "download_duration_ms"

    invoke-direct {p0}, Lcom/instagram/api/g/d;->c()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;J)V

    .line 100
    :cond_4
    iget v0, p0, Lcom/instagram/api/g/d;->c:I

    if-lez v0, :cond_5

    .line 101
    const-string v0, "failure_count"

    iget v1, p0, Lcom/instagram/api/g/d;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/instagram/api/g/d;->i:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 105
    const-string v0, "last_exception"

    iget-object v1, p0, Lcom/instagram/api/g/d;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_6
    const-string v0, "hit_count"

    iget v1, p0, Lcom/instagram/api/g/d;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    .line 109
    const-string v0, "key"

    iget-object v1, p0, Lcom/instagram/api/g/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    .line 112
    return-void
.end method

.method public final a(Lcom/instagram/api/g/i;)V
    .locals 4
    .parameter

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/instagram/api/g/d;->d:J

    invoke-virtual {p1}, Lcom/instagram/api/g/i;->l()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/instagram/api/g/d;->d:J

    .line 42
    iget-wide v0, p0, Lcom/instagram/api/g/d;->e:J

    invoke-virtual {p1}, Lcom/instagram/api/g/i;->m()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/instagram/api/g/d;->e:J

    .line 43
    iget-wide v0, p0, Lcom/instagram/api/g/d;->f:J

    invoke-virtual {p1}, Lcom/instagram/api/g/i;->n()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/instagram/api/g/d;->f:J

    .line 44
    iget-wide v0, p0, Lcom/instagram/api/g/d;->g:J

    invoke-virtual {p1}, Lcom/instagram/api/g/i;->i()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/instagram/api/g/d;->g:J

    .line 45
    iget-wide v0, p0, Lcom/instagram/api/g/d;->h:J

    invoke-virtual {p1}, Lcom/instagram/api/g/i;->j()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/instagram/api/g/d;->h:J

    .line 46
    iget v0, p0, Lcom/instagram/api/g/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/api/g/d;->b:I

    .line 47
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    iget v0, p0, Lcom/instagram/api/g/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/api/g/d;->c:I

    .line 54
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/api/g/d;->i:Ljava/lang/String;

    .line 55
    return-void
.end method
