.class public final Lcom/facebook/ac;
.super Ljava/lang/Object;
.source "FacebookRequestError.java"


# static fields
.field private static final a:Lcom/facebook/ae;

.field private static final b:Lcom/facebook/ae;

.field private static final c:Lcom/facebook/ae;

.field private static final d:Lcom/facebook/ae;


# instance fields
.field private final e:I

.field private final f:Z

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Lorg/json/JSONObject;

.field private final n:Lorg/json/JSONObject;

.field private final o:Ljava/lang/Object;

.field private final p:Ljava/net/HttpURLConnection;

.field private final q:Lcom/facebook/z;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v2, 0x12b

    const/16 v1, 0xc8

    const/4 v3, 0x0

    .line 82
    new-instance v0, Lcom/facebook/ae;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ae;-><init>(IIB)V

    sput-object v0, Lcom/facebook/ac;->a:Lcom/facebook/ae;

    .line 89
    new-instance v0, Lcom/facebook/ae;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ae;-><init>(IIB)V

    sput-object v0, Lcom/facebook/ac;->b:Lcom/facebook/ae;

    .line 90
    new-instance v0, Lcom/facebook/ae;

    const/16 v1, 0x190

    const/16 v2, 0x1f3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ae;-><init>(IIB)V

    sput-object v0, Lcom/facebook/ac;->c:Lcom/facebook/ae;

    .line 91
    new-instance v0, Lcom/facebook/ae;

    const/16 v1, 0x1f4

    const/16 v2, 0x257

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ae;-><init>(IIB)V

    sput-object v0, Lcom/facebook/ac;->d:Lcom/facebook/ae;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/facebook/ac;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/z;)V

    .line 185
    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/z;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p1, p0, Lcom/facebook/ac;->h:I

    .line 112
    iput p2, p0, Lcom/facebook/ac;->i:I

    .line 113
    iput p3, p0, Lcom/facebook/ac;->j:I

    .line 114
    iput-object p4, p0, Lcom/facebook/ac;->k:Ljava/lang/String;

    .line 115
    iput-object p5, p0, Lcom/facebook/ac;->l:Ljava/lang/String;

    .line 116
    iput-object p6, p0, Lcom/facebook/ac;->n:Lorg/json/JSONObject;

    .line 117
    iput-object p7, p0, Lcom/facebook/ac;->m:Lorg/json/JSONObject;

    .line 118
    iput-object p8, p0, Lcom/facebook/ac;->o:Ljava/lang/Object;

    .line 119
    iput-object p9, p0, Lcom/facebook/ac;->p:Ljava/net/HttpURLConnection;

    .line 122
    if-eqz p10, :cond_1

    .line 123
    iput-object p10, p0, Lcom/facebook/ac;->q:Lcom/facebook/z;

    move v2, v1

    .line 134
    :goto_0
    if-eqz v2, :cond_2

    .line 135
    sget v1, Lcom/facebook/ad;->h:I

    move v2, v1

    move v1, v0

    .line 175
    :cond_0
    :goto_1
    iput v2, p0, Lcom/facebook/ac;->g:I

    .line 176
    iput v1, p0, Lcom/facebook/ac;->e:I

    .line 177
    iput-boolean v0, p0, Lcom/facebook/ac;->f:Z

    .line 178
    return-void

    .line 126
    :cond_1
    new-instance v2, Lcom/facebook/af;

    invoke-direct {v2, p0, p5}, Lcom/facebook/af;-><init>(Lcom/facebook/ac;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/facebook/ac;->q:Lcom/facebook/z;

    move v2, v0

    goto :goto_0

    .line 138
    :cond_2
    if-eq p2, v1, :cond_3

    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    .line 139
    :cond_3
    sget v2, Lcom/facebook/ad;->d:I

    move v1, v0

    .line 164
    :goto_2
    if-nez v2, :cond_0

    .line 165
    sget-object v2, Lcom/facebook/ac;->c:Lcom/facebook/ae;

    invoke-virtual {v2, p1}, Lcom/facebook/ae;->a(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 166
    sget v2, Lcom/facebook/ad;->g:I

    goto :goto_1

    .line 140
    :cond_4
    const/4 v2, 0x4

    if-eq p2, v2, :cond_5

    const/16 v2, 0x11

    if-ne p2, v2, :cond_6

    .line 141
    :cond_5
    sget v2, Lcom/facebook/ad;->e:I

    move v1, v0

    goto :goto_2

    .line 142
    :cond_6
    const/16 v2, 0xa

    if-eq p2, v2, :cond_7

    sget-object v2, Lcom/facebook/ac;->a:Lcom/facebook/ae;

    invoke-virtual {v2, p2}, Lcom/facebook/ae;->a(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 143
    :cond_7
    sget v2, Lcom/facebook/ad;->c:I

    .line 144
    sget v1, Lcom/facebook/az;->com_facebook_requesterror_permissions:I

    goto :goto_2

    .line 145
    :cond_8
    const/16 v2, 0x66

    if-eq p2, v2, :cond_9

    const/16 v2, 0xbe

    if-ne p2, v2, :cond_11

    .line 146
    :cond_9
    const/16 v2, 0x1cb

    if-eq p3, v2, :cond_a

    const/16 v2, 0x1d0

    if-ne p3, v2, :cond_b

    .line 147
    :cond_a
    sget v2, Lcom/facebook/ad;->a:I

    .line 148
    sget v0, Lcom/facebook/az;->com_facebook_requesterror_web_login:I

    move v4, v1

    move v1, v0

    move v0, v4

    .line 149
    goto :goto_2

    .line 151
    :cond_b
    sget v2, Lcom/facebook/ad;->b:I

    .line 153
    const/16 v3, 0x1ca

    if-eq p3, v3, :cond_c

    const/16 v3, 0x1cf

    if-ne p3, v3, :cond_d

    .line 154
    :cond_c
    sget v1, Lcom/facebook/az;->com_facebook_requesterror_relogin:I

    goto :goto_2

    .line 155
    :cond_d
    const/16 v3, 0x1cc

    if-ne p3, v3, :cond_e

    .line 156
    sget v1, Lcom/facebook/az;->com_facebook_requesterror_password_changed:I

    goto :goto_2

    .line 158
    :cond_e
    sget v0, Lcom/facebook/az;->com_facebook_requesterror_reconnect:I

    move v4, v1

    move v1, v0

    move v0, v4

    .line 159
    goto :goto_2

    .line 167
    :cond_f
    sget-object v2, Lcom/facebook/ac;->d:Lcom/facebook/ae;

    invoke-virtual {v2, p1}, Lcom/facebook/ae;->a(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 168
    sget v2, Lcom/facebook/ad;->d:I

    goto :goto_1

    .line 170
    :cond_10
    sget v2, Lcom/facebook/ad;->f:I

    goto :goto_1

    :cond_11
    move v1, v0

    move v2, v0

    goto :goto_2
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v6, 0x0

    .line 195
    move-object v0, p0

    move v2, p1

    move v3, v1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    move-object v10, v6

    invoke-direct/range {v0 .. v10}, Lcom/facebook/ac;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/z;)V

    .line 197
    return-void
.end method

.method constructor <init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 188
    instance-of v0, p2, Lcom/facebook/z;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/facebook/z;

    move-object v10, p2

    :goto_0
    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, p1

    invoke-direct/range {v0 .. v10}, Lcom/facebook/ac;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/z;)V

    .line 192
    return-void

    .line 188
    :cond_0
    new-instance v10, Lcom/facebook/z;

    invoke-direct {v10, p2}, Lcom/facebook/z;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/ac;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 351
    :try_start_0
    const-string v1, "code"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 352
    const-string v1, "code"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 353
    const-string v3, "body"

    const-string v4, "FACEBOOK_NON_JSON_RESULT"

    invoke-static {p0, v3, v4}, Lcom/facebook/g/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 356
    if-eqz v6, :cond_2

    instance-of v3, v6, Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    .line 357
    check-cast v6, Lorg/json/JSONObject;

    .line 366
    const-string v3, "error"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    const-string v0, "error"

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/facebook/g/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 370
    const-string v3, "type"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 371
    const-string v3, "message"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 372
    const-string v3, "code"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 373
    const-string v3, "error_subcode"

    const/4 v8, -0x1

    invoke-virtual {v0, v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    move v0, v2

    move v2, v4

    move-object v4, v7

    .line 384
    :goto_0
    if-eqz v0, :cond_2

    .line 385
    new-instance v0, Lcom/facebook/ac;

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ac;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V

    .line 403
    :goto_1
    return-object v0

    .line 375
    :cond_0
    const-string v3, "error_code"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "error_msg"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "error_reason"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 377
    :cond_1
    const-string v0, "error_reason"

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 378
    const-string v0, "error_msg"

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 379
    const-string v0, "error_code"

    const/4 v3, -0x1

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 380
    const-string v3, "error_subcode"

    const/4 v7, -0x1

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    move v11, v2

    move v2, v0

    move v0, v11

    .line 381
    goto :goto_0

    .line 391
    :cond_2
    sget-object v0, Lcom/facebook/ac;->b:Lcom/facebook/ae;

    invoke-virtual {v0, v1}, Lcom/facebook/ae;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 392
    new-instance v0, Lcom/facebook/ac;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "body"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "body"

    const-string v7, "FACEBOOK_NON_JSON_RESULT"

    invoke-static {p0, v6, v7}, Lcom/facebook/g/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    :goto_2
    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ac;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_3
    move-object v0, v10

    .line 403
    goto :goto_1

    :cond_4
    move-object v6, v10

    .line 392
    goto :goto_2

    :cond_5
    move v3, v0

    move v2, v0

    move-object v5, v10

    move-object v4, v10

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/facebook/ac;->h:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/facebook/ac;->i:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/facebook/ac;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/facebook/ac;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/facebook/ac;->l:Ljava/lang/String;

    .line 278
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ac;->q:Lcom/facebook/z;

    invoke-virtual {v0}, Lcom/facebook/z;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()Lcom/facebook/z;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/facebook/ac;->q:Lcom/facebook/z;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{HttpStatus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/facebook/ac;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/ac;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ac;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ac;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
