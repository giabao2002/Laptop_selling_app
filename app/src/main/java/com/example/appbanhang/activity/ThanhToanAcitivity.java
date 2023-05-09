package com.example.appbanhang.activity;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.Toolbar;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.example.appbanhang.R;
import com.example.appbanhang.utils.Utils;
import com.google.gson.Gson;

import java.text.DecimalFormat;

public class ThanhToanAcitivity extends AppCompatActivity {
    Toolbar toolbar;
    TextView txttongtien, txtemail, txtsodienthoai;
    EditText edtdiachi;
    AppCompatButton btndathang;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_thanh_toan_acitivity);
        initView();
        initControl();
    }

    private void initControl() {
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        toolbar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });
        DecimalFormat decimalFormat = new DecimalFormat("###,###,###");
        long tongtien = getIntent().getLongExtra("tongtien", 0);
        txttongtien.setText(decimalFormat.format(tongtien));
        txtemail.setText(Utils.user_current.getEmail());
        txtsodienthoai.setText(Utils.user_current.getMobile());

        btndathang.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String str_diachi = edtdiachi.getText().toString().trim();
                if (TextUtils.isEmpty(str_diachi)) {
                    Toast.makeText(getApplicationContext(), "Ban chua nhap dia chi", Toast.LENGTH_SHORT).show();
                } else {
                    Log.d("test", new Gson().toJson(Utils.manggiohang));
                }
            }
        });
    }

    private void initView() {
        toolbar = findViewById(R.id.toobar);
        txtemail = findViewById(R.id.txtemail);
        txtsodienthoai = findViewById(R.id.txtsodienthoai);
        txttongtien = findViewById(R.id.txttongtien);
        edtdiachi = findViewById(R.id.edtdiachi);
        btndathang = findViewById(R.id.btndathang);
    }
}